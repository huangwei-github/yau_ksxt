package com.lanou.web.controller;

import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import com.lanou.web.controller.quartz.SendMailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MailController {

    @Autowired
    private SendMailUtils sendMailUtils;

    @RequestMapping(value = "/mail", method = RequestMethod.GET)
    @ResponseBody
    public Result sendMail(String to, String html) {
        try {
            sendMailUtils.sendMail(to, html);
        } catch (Exception e) {
            return ResultGenerator.genFailResult("发送邮件功能异常");
        }
        return ResultGenerator.genSuccessResult();
    }

}
