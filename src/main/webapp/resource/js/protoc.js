/**
 * Created by zhanglong on 17-4-14.
 */

var message =  {
    "head":header,
    "body":""
}


var header = {
    "type":"",// 1,普通用户间消息  2.响应消息  3.系统通知消息 4.心跳请求 5.心跳响应 6.用户验证请求 7.用户验证结果
    "status":"",// {请求消息 1. 100:请求信息}    {响应消息  2.200:响应正常(登录验证的响应为有数据响应)     3.404:响应无数据(登录验证时响应无数据)    4.500:响应服务器报错}
    "uid":""//消息编码  响应的消息该字段为原消息编码
}

function header(header,header,uid)
{
    this.header()=headerfirstname;
    this.lastname=lastname;
    this.age=age;
    this.eyecolor=eyecolor;
}