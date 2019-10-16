package com.lanou.web.controller.msgqueue;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

public class MsgQueueListener implements MessageListener {

    @Override
    public void onMessage(Message message) {
        TextMessage msg = (TextMessage) message;
        System.out.println("当前存在消息: " + message);
    }

}
