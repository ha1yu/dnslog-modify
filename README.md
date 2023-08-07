# dnslog-modify

dnslog-go 修改版

原版地址：https://github.com/lanyi1998/DNSlog-GO

新增了一个ceye接口，使其能和log4j2-burp-scanner配合起来工作，现在常见的DNSlog平台大部分被防火墙等安全设备封禁，自己搭建DNSlog平台可以和burp的log4j2-burp-scanner插件进行配合使用

需要跟此插件配合使用

修改版log4j2-burp-scanner：

https://github.com/ha1yu/log4j2-burp-scanner-modify


![image](https://github.com/ha1yu/dnslog-modify/assets/59911588/9407d9e7-da12-4cdf-b923-693d5ed1b0ac)


配置文件 config.yaml ：

```
HTTP:
  port: 31001
  # 下一行配置文件的意思 {"web管理端的token":"该用户对应子域名 类似于：1ifct.dnslog.子域名.域名.com"}
  user: { "passwd": "img" }
  consoleDisable: false
Dns:
  domain: 子域名.域名.com
```

服务器执行，监听53端口，如果ubuntu的53端口被占用，百度搜一下把它关了

![image](https://github.com/ha1yu/dnslog-modify/assets/59911588/ee1becb1-0660-4c5d-a35e-0ca8ce316e87)

新增的接口会返回ceye格式的json字符串，log4j2-burp-scanner可解析

接口：http://ip:端口/api/getceye?token=passwd

![image](https://github.com/ha1yu/dnslog-modify/assets/59911588/a1739629-097e-43ba-b30d-9a0a5ac176ae)


在ceyi的ceyetoken中填写接口地址：

http://8.8.8.8:31001/api/getceye?token=passwd

ceyednslog填写dnslog地址

![image](https://github.com/ha1yu/dnslog-modify/assets/59911588/51ffe1d0-e02a-4c12-a3c1-f620c56acb4a)




