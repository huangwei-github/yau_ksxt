package com.lanou.service.impl;

import com.lanou.service.IMsgConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.TextMessage;

//@Service
public class MsgConsumerService implements IMsgConsumerService {

    @Autowired
    private JmsTemplate jmsTemplate;

    @Resource(name = "queue")
    private Destination queue;

    @Override
    public TextMessage receive() {
        return (TextMessage) jmsTemplate.receive(queue);
    }

}
