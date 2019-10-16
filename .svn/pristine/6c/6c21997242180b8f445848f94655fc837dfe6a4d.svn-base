package com.lanou.web.controller;

import com.lanou.service.IMsgConsumerService;
import com.lanou.service.IMsgProviderService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jms.JMSException;

//@Controller
public class MessageController {

    @Autowired
    private IMsgProviderService provider;

    @Autowired
    private IMsgConsumerService consumer;

    @RequestMapping(value = "/msg/send", method = RequestMethod.GET)
    public @ResponseBody Result sendMsg(String message) {
        provider.sendMsg(message);
        return ResultGenerator.genSuccessResult("消息发送成功");
    }


    @RequestMapping(value = "/msg/receive", method = RequestMethod.GET)
    public @ResponseBody Result receiveMsg() {
        String message = "";
        try {
            message = consumer.receive().getText();
        } catch (JMSException e) {
            return ResultGenerator.genFailResult("消息接受失败:当前队列中消息为空");
        }
        return ResultGenerator.genSuccessResult("消息接收成功:" + message);
    }

}
