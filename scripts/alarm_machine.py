# ====coding: utf-8 -*-
# @Time: 2022/11/15 17:41
# @Author: chx
# @File:
# 检查 10.1.2.9 对接AD是否正常 并写入登陆日志到指定文件，方便出现问题溯源
# @Software: PyCharm

import http.client
import json

import paramiko
import logging
from logging import handlers


class Logger(object):
    """
    公共接口日志类
    """
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
    """
    OA平台封装的飞书邮件通知接口
    :param mail:
    :param content:
    :return:
    """
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


def scan_ad_info(hosts):
    """
    测试10.1.2.9机器是否对接AD正常
    :return:
    """
    try:
        # 创建ssh对象
        print("开始校验10.1.2.9机器")
        ssh = paramiko.SSHClient()
        # 连接方式
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        # AD账号发起远程连接
        ssh.connect(hosts, 22, "haoxin.chen@magnumwm.com", "yourpassword")
        # 在远程Linux执行命令
        stdin, stdout, stderr = ssh.exec_command("wbinfo -u")
        message = '10.1.2.9机器AD登陆正常, ip:{}'.format(hosts)
        # 关闭ssh连接
        ssh.close()
        log = Logger('/tmp/test.log', level='debug')
        log.logger.info('10.1.2.9机器 AD账号登陆正常')
    except Exception as e:
        print(str(e))
        from interval import Interval
        import time
        # 当前时间
        now_localtime = time.strftime("%H:%M:%S", time.localtime())
        # 当前时间（以时间区间的方式表示）
        now_time = Interval(now_localtime, now_localtime)
        time_interval_two = Interval("09:00:00", "21:00:00")
        if now_time in time_interval_two:
            print("在9点-21点工作时间内，发送飞书通知")
            mail = 'haoxin.chen@magnumwm.com,haoran.zhu@magnumwm.com'
            message = f"{hosts} 机器对接AD服务器异常，请及时查看服务器信息"
            fei_shu_info(mail, message)
        else:
            print("不在9点-21点工作时间内，不发送飞书通知，仅记录日志，第二天再分析")
            log = Logger('/tmp/test.log', level='error')
            log.logger.error('10.1.2.9机器 AD账号无法正常登陆')


if __name__ == '__main__':
    host_list = ['10.1.2.9']
    for item in host_list:
        scan_ad_info(item)


