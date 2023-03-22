#coding=utf-8

import sys
import time
from threading import Thread
import urllib
import http.client as httplib
import random
import uuid
import logging
import http.client
# import requests

logging.basicConfig(level=logging.DEBUG,
                format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                datefmt='%a, %d %b %Y %H:%M:%S',
                filename='benchmark.log',
                filemode='w')

def log_uncaught_exceptions(exception_type, exception, tb):
    logging.critical(''.join(traceback.format_tb(tb)))
    logging.critical('{0}: {1}'.format(exception_type, exception))
sys.excepthook = log_uncaught_exceptions

#网关地址
global test_count
global request_outcome
# global requst_interval
addr="algo-internal.aqumon.com"
path_para="/api/streaming/market/trade-snapshot?symbols=USDHKD.FX"
port=8000
thread_count = 2000 #单次并发数量
requst_interval = 2 #请求间隔(秒)
test_count = 1 #總共測試次數
request_outcome = {"ok":0,"timed out":0,"SSLEOFError(8, 'EOF occurred in violation of protocol (_ssl.c:1131)')":0,"RemoteDisconnected('Remote end closed connection without response')":0,"ConnectionResetError(104, 'Connection reset by peer')":0} #統計異常頻率
now_count = 0

def get_https():
    global now_count
    httpClient = None
    try:
        # response = requests.get(f"{addr}{context_path}", params=para)
        httpClient = http.client.HTTPSConnection(addr,timeout=30)
        httpClient.request("GET", path_para)
        response = httpClient.getresponse()
        # print('status code: ' + str(response.status))
        # print('返回數據: ' + str(response.read()))
        # print('status code: ' + response.status_code + 'reason: ' + response.reason)
        # print('返回數據: ' + response.text())

        # logging.info('返回码: ' + str(response.status))
        # logging.info('返回数据: ' + str(response.read()))
        # logging.info('返回数据: ' + response.text())
        if str(response.status) == "200":
            request_outcome["ok"]+=1
        else:
            if str(response.status) in request_outcome.keys():
                request_outcome[str(response.status)]+=1
            else:
                request_outcome[str(response.status)]=1
        sys.stdout.flush()
        now_count+=1
    except Exception as e:
        print(str(e))
        if "Remote end closed connection without response" in str(e):
            request_outcome["RemoteDisconnected('Remote end closed connection without response')"]+=1
        elif "EOF occurred in violation" in str(e):
            request_outcome["SSLEOFError(8, 'EOF occurred in violation of protocol (_ssl.c:1131)')"]+=1
        elif "Connection reset" in str(e):
            request_outcome["ConnectionResetError(104, 'Connection reset by peer')"]+=1
        elif "timed out" in str(e):
            # print(str(e))
            # logging.info(e)
            request_outcome["timed out"]+=1
        else:
            print(str(e))
            logging.info(e)
    finally:
        if httpClient:
            httpClient.close()

def send_http():
    global now_count
    httpClient = None
    try:
        for user in user_list:
            tmp_user = user["login"]
            if tmp_user.strip() =='':
                tmp_user = str(uuid.uuid1()) + str(random.random())
            print(tmp_user)
            params = urllib.urlencode({"operationData":
                        [{"login": tmp_user,"password":user["password"]}]})
            headers = {"Content-type": "application/x-www-form-urlencoded", "Accept": "text/plain"}

            httpClient = httplib.HTTPConnection(addr, port, timeout=30)
            httpClient.request("POST", "/simple/spider.task.distribute", params, headers)

            response = httpClient.getresponse()
            print('发送数据: ' + params)
            print('返回码: ' + str(response.status))
            print('返回数据: ' + response.read())

            logging.info('发送数据: ' + params)
            logging.info('返回码: ' + str(response.status))
            logging.info('返回数据: ' + response.read())
            #print response.getheaders() #获取头信息
            sys.stdout.flush()
            now_count+=1
    except Exception as e:
        print(e)
        logging.info(e)
    finally:
        if httpClient:
            httpClient.close()

def test_func(run_count):
    global now_count
    cnt = 0
    while cnt < run_count:
        # print('')
        # print('***************************请求次数:' + str(now_count) + '*******************************')
        # print('Thread:(%d) Time:%s\n'%(thread.get_ident(), time.ctime()))

        # logging.info(' ')
        # logging.info('***************************请求次数:' + str(now_count) + '*******************************')
        # logging.info('Thread:(%d) Time:%s\n'%(thread.get_ident(), time.ctime()))
        cnt+=1
        get_https()
        sys.stdout.flush()
        time.sleep(requst_interval)

def test(ct):
    global thread_count
    for i in range(thread_count):
        Thread(target=test_func, args=(ct,)).start()

if __name__=='__main__':
    test(test_count)
    while True:
        time.sleep(30)
        rct = 0
        for e in request_outcome.keys():
            rct+=request_outcome[e]
        if rct ==  thread_count * test_count:
            print(str(request_outcome))
            break
        print(str(request_outcome))