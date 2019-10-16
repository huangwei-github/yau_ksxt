package com.lanou.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping(value = "/admin/")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/admin/{path}")
    public String index(@PathVariable("path") String path) {
        return path;
    }


}
