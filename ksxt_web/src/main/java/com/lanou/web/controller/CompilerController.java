package com.lanou.web.controller;

import com.lanou.util.CompilerUtils;
import com.lanou.util.GException;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CompilerController {

    @RequestMapping(value = "/compile", method = RequestMethod.GET)
    @ResponseBody
    public Result compile(String codes) {
        System.out.println(codes);
        String methodName = "main";
        Object response = null;
        CompilerUtils utils = new CompilerUtils();
        response = utils.eval(methodName, codes);
        return ResultGenerator.genSuccessResult(response);
    }


}
