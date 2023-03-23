import http.client
import json

import psycopg2
import logging
from logging import handlers
import socket

class Logger(object):
    level_relations = {
        'debug': logging.DEBUG,
        'info': logging.INFO,
        'warning': logging.WARNING,
        'error': logging.ERROR,
        'crit': logging.CRITICAL
    }

    def __init__(self, filename, level='info', when='D', backCount=3,
                 fmt='%(asctime)s - %(pathname)s[line:%(lineno)d] - %(levelname)s: %(message)s'):
        self.logger = logging.getLogger(filename)
        format_str = logging.Formatter(fmt)  # 设置日志格式
        self.logger.setLevel(self.level_relations.get(level))  # 设置日志级别
        sh = logging.StreamHandler()  # 往屏幕上输出
        sh.setFormatter(format_str)  # 设置屏幕上显示的格式
        th = handlers.TimedRotatingFileHandler(filename=filename, when=when, backupCount=backCount,
                                               encoding='utf-8')  # 往文件里写入#指定间隔时间自动生成文件的处理器
        th.setFormatter(format_str)  # 设置文件里写入的格式
        self.logger.addHandler(sh)  # 把对象加到logger里
        self.logger.addHandler(th)


def fei_shu_info(mail, content):
    try:
        conn = http.client.HTTPSConnection("oa.aqumon.com")
        payload = json.dumps({
          "mail": mail,
          "message_content": content
        })
        headers = {
          'Content-Type': 'application/json'
        }
        conn.request("POST", "/api/v1.0/public_api/warn_info", payload, headers)
        res = conn.getresponse()
        data = res.read()
        print(data.decode("utf-8"))
    except Exception as e:
        print(str(e))

def test_pg_conn():
    try:
        #Define our connection string
        conn_string = f"host='{host_to_be_tested}' dbname='dm_test' user='django_admin' password='django_admin'"

        # get a connection, if a connect cannot be made an exception will be raised here
        conn = psycopg2.connect(conn_string)

        # conn.cursor will return a cursor object, you can use this cursor to perform queries
        cursor = conn.cursor()

        print(f"psycopg2 {conn_string} Connected!")
        log.logger.info(f'psycopg2 {host_to_be_tested}:{str(port_to_be_tested)} connect 正常')
    except Exception as e:
        print(str(e))
        mail = 'haoran.zhu@magnumwm.com'
        message = f"psycopg2 {host_to_be_tested}:{str(port_to_be_tested)} FAILED，请及时查看服务器信息"
        fei_shu_info(mail, message)

def netcat(hostname, port, content):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((hostname, port))
        s.sendall(content)
        s.shutdown(socket.SHUT_WR)
        while 1:
            data = s.recv(1024)
            if len(data) == 0:
                break
            # print("Received:", repr(data))
        s.close()
        print(f"NCAT {host_to_be_tested}:{str(port_to_be_tested)} 正常")
        log.logger.info(f'NCAT {host_to_be_tested}:{str(port_to_be_tested)} 正常')
    except Exception as e:
        print(str(e))
        mail = 'haoran.zhu@magnumwm.com'
        message = f"NCAT {host_to_be_tested}:{str(port_to_be_tested)} FAILED，请及时查看服务器信息"
        fei_shu_info(mail, message)

if __name__ == '__main__':
    log = Logger('/tmp/test.log', level='debug')
    host_to_be_tested=f"datamaster.timescaledb.svc.cluster.local"
    port_to_be_tested=5432
    test_pg_conn()
    netcat(host_to_be_tested, port_to_be_tested, "test".encode())