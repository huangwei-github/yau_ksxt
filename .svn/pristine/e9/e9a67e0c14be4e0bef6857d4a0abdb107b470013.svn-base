package com.lanou.web.controller;

import com.lanou.entity.pojo.TbStudentInfo;
import com.lanou.entity.pojo.TbTeacherInfo;
import com.lanou.entity.pojo.TbUser;
import com.lanou.service.IAdminInfoService;
import com.lanou.service.IStudentInfoService;
import com.lanou.service.ITeacherInfoService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import com.lanou.util.VerifyCode;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;


@Controller
public class UserController {

    @Autowired
    private IStudentInfoService studentInfoService;

    @Autowired
    private ITeacherInfoService teacherInfoService;

    @Autowired
    private IAdminInfoService adminInfoService;

    //用户登录
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Result login(@Valid TbUser user, BindingResult bindingResult, String vcode, @ApiIgnore HttpSession session) {
        //登录参数验证
        if (bindingResult.hasFieldErrors()) {
            for (FieldError error: bindingResult.getFieldErrors()) {
                return ResultGenerator.genFailResult(error.getDefaultMessage());
            }
        }
        //登录验证码验证
        String code = (String)session.getAttribute("code");
        if (!code.equalsIgnoreCase(vcode)) {
            return ResultGenerator.genFailResult("验证码错误");
        }

        //验证用户合法性
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
        } catch (IncorrectCredentialsException ice) {
            // 捕获密码错误异常
            return ResultGenerator.genFailResult("用户名或密码错误");
        } catch (UnknownAccountException uae) {
            // 捕获未知用户名异常
            return ResultGenerator.genFailResult("用户名或密码错误");
        } catch (ExcessiveAttemptsException eae) {
            // 捕获错误登录过多的异常
            return ResultGenerator.genFailResult("服务器异常");
        }
        TbUser c_user = (TbUser) subject.getSession().getAttribute("user");
        //已通过以上验证，重置密码，将用户返回
        c_user.setPassword("*");
        return ResultGenerator.genSuccessResult(c_user);
    }

    //用户注销
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    @ResponseBody
    public Result logout(HttpSession session) {
        session.invalidate();
        return ResultGenerator.genSuccessResult();
    }

    //生成图片验证码
    @RequestMapping(value = "/vcode", method = RequestMethod.GET)
    public void genVerifyCode(HttpServletResponse response, HttpServletRequest request) {
        request.getSession().setAttribute("code", VerifyCode.drawRandomText());
        try {
            ImageIO.write(VerifyCode.verifyImg, "png", response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    //用户登录后同时获取用户的个人信息
    @RequestMapping(value = "/findInfo",method = RequestMethod.POST)
    @ResponseBody
    @RequiresRoles(value = {"student", "teacher"}, logical = Logical.OR)  //允许具有老师或学生身份的访问该接口
    public Result findMyInfo(String identifier){
        Subject subject = SecurityUtils.getSubject();
        TbUser user = (TbUser) subject.getSession().getAttribute("user");
        if (user != null) {
            if (identifier.equals("student")) {
                TbStudentInfo studentInfo = studentInfoService.findStudentInfo(user);
                return ResultGenerator.genSuccessResult(studentInfo);
            } else {
                TbTeacherInfo teacherInfo = teacherInfoService.findTeacherInfoById(user.getId());
                System.out.println(teacherInfo.toString());
                return ResultGenerator.genSuccessResult(teacherInfo);
            }
        } else {
            return ResultGenerator.genFailResult("未得到该用户信息,可能原因:未鉴权");
        }

    }

}
