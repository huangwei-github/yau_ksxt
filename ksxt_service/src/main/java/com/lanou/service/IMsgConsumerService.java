package com.lanou.service;

import javax.jms.TextMessage;

public interface IMsgConsumerService {

    TextMessage receive();

}
