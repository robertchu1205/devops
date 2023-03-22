#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2022/12/21 3:01 下午
# @Author  : chenhaoxin
# @File    : monitor_port.py.py
# @Software: macOS Tensorflow1.13.1 python3.7

import telnetlib
import http.client
import json
import requests


def fei_shu_info(mail, content):
    """
    OA平台封装的飞书邮件通知接口
    :param mail:
    :param content:
    :return:
    """
    try:
        url = "https://oa.aqumon.com/api/v1.0/public_api/warn_info"
        payload = json.dumps({
            "mail": mail,
            "message_content": content
        })
        headers = {
            'Content-Type': 'application/json'
        }
        response = requests.request("POST", url, headers=headers, data=payload)
        print(response.text)
    except Exception as e:
        print(str(e))

def telnet(hosts, port):
    """
    测试端口号通不通
    :return:
    """
    try:
        # timeout单位s
        telnetlib.Telnet(host=hosts, port=port, timeout=2)
        print(f"{hosts}:{port} 端口检测正常")
    except Exception as e:
        print(str(e))
        mail = 'haoxin.chen@magnumwm.com,haoran.zhu@magnumwm.com'
        message = f"zxqh-colo k3s - {hosts}:{port}  端口检测不通，儘速檢查"
        fei_shu_info(mail, message)


if __name__ == '__main__':
    port_list = ['38090','80', '8090', '18090']
    for port in port_list:
        host = '127.0.0.1'  # 根据实际需要修改监听的ip
        telnet(host, port)

# #!/usr/bin/env python
# # -*- coding: utf-8 -*-
# # @Time    : 2022/12/21 3:01 下午
# # @Author  : chenhaoxin
# # @File    : monitor_port.py.py
# # @Software: macOS Tensorflow1.13.1 python3.7

# import telnetlib
# import http.client
# import json

# def fei_shu_info(mail, content):
#     conn = http.client.HTTPSConnection("oa.aqumon.com")
#     payload = json.dumps({
#       "mail": mail,
#       "message_content": content
#     })
#     headers = {
#       'Content-Type': 'application/json'
#     }
#     conn.request("POST", "/api/v1.0/public_api/warn_info", payload, headers)
#     res = conn.getresponse()
#     data = res.read()
#     print(data.decode("utf-8"))


# def telnet(hosts, port):
#     """
#     测试端口号通不通
#     :return:
#     """
#     try:
#         # timeout单位s
#         telnetlib.Telnet(host=hosts, port=port, timeout=2)
#         print(f"{hosts}:{port} 端口检测正常")
#     except Exception as e:
#         print(str(e))
#         mail = 'haoran.zhu@magnumwm.com'
#         message = f"zxqh-colo k3s - {hosts}:{port}  端口检测不通，儘速檢查"
#         fei_shu_info(mail, message)


# if __name__ == '__main__':
#     port_list = ['80', '8090', '18090', '28090']
#     for port in port_list:
#         host = '127.0.0.1'  # 根据实际需要修改监听的ip
#         telnet(host, port)


