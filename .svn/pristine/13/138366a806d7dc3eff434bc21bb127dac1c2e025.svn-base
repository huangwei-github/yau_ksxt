package com.lanou.web.controller.admin;

import com.lanou.entity.pojo.TbAdminInfo;
import com.lanou.entity.pojo.TbStudentInfo;
import com.lanou.entity.pojo.TbTeacherInfo;
import com.lanou.service.IAdminInfoService;
import com.lanou.service.IStudentInfoService;
import com.lanou.service.ITeacherInfoService;
import com.lanou.service.IUserService;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class MemberController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IStudentInfoService studentInfoService;

    @Autowired
    private ITeacherInfoService teacherInfoService;

    @Autowired
    private IAdminInfoService adminInfoService;

    /**
     * INFO: 查询用户信息(列表)
     * @param identifier 标识符:student, teacher, admin
     * @param splitor   分页信息
     * @param model   数据模型
     * @return
     */
    @RequestMapping(value = "/admin/user", method = RequestMethod.GET)
    public String getUserList(String identifier, PageSplitor splitor, ModelMap model) {
        if (identifier.equals("student")) {
            List<TbStudentInfo> infos = studentInfoService.findStudentInfoByHelper(splitor);
            model.addAttribute("identifier", "student");
            model.addAttribute("count", studentInfoService.findStudentCount());
            model.addAttribute("user", infos);
        } else if (identifier.equals("teacher")) {
            List<TbTeacherInfo> infos = teacherInfoService.findTeacherInfoByHelper(splitor);
            model.addAttribute("identifier", "teacher");
            model.addAttribute("count", teacherInfoService.findTeacherInfoCount());
            model.addAttribute("user", infos);
        } else if (identifier.equals("admin")) {
            List<TbAdminInfo> infos = adminInfoService.findAdminInfoByHelper(splitor);
            model.addAttribute("identifier", "admin");
            model.addAttribute("count", adminInfoService.findAdminInfoCount());
            model.addAttribute("user", infos);
        }
        return "member-list";
    }


    /**
     * INFO: 删除指定id的用户信息
     * @param  identifier - 用户标识符
     * @param ids - 所需要删除的用户信息的id
     * @return
     */
    @RequestMapping(value = "/admin/user", method = RequestMethod.DELETE)
    @ResponseBody
    public Result removeUserInfo(String identifier, String ids) {
        if (identifier.equals("student")) {
            int count = studentInfoService.removeStudentInfo(ids);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("学生信息删除成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("学生信息删除失败");
        } else if (identifier.equals("teacher")) {
            int count = teacherInfoService.removeTeacherInfo(ids);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("教师信息删除成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("教师信息删除失败");
        } else {
            int count = adminInfoService.removeAdminInfo(ids);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("管理员信息删除成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("管理员信息删除失败");
        }
    }

    /**
     * INFO： 添加用户信息
     * @param identifier 标识符
     * @param user -> TbStudentInfo, TbTeacherInfo, TbAdminInfo
     * @return
     */
    @RequestMapping(value = "/admin/user", method = RequestMethod.POST)
    @ResponseBody
    public Result addUserInfo(String identifier, Object user) {
        if (identifier.equals("student")) {
            int count = studentInfoService.addStudentInfo((TbStudentInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("学生信息添加成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("学生信息添加失败");
        } else if (identifier.equals("teacher")) {
            int count = teacherInfoService.addTeacherInfo((TbTeacherInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("教师信息添加成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("教师信息添加失败");
        } else{
            int count = adminInfoService.addAdminInfo((TbAdminInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("管理员信息添加成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("管理员信息添加失败");
        }
    }

    /**
     * INFO: 修改用户信息
     * @param map {'identifier': , 'user[teacher,student,admin]': {} }
     * @return
     */
    @RequestMapping(value = "/admin/user", method = RequestMethod.PUT)
    @ResponseBody
    public Result updateUserInfo(@RequestParam("map") Map<String, Object> map) {
        String identifier = (String) map.get("identifier");
        Map<String, Object> user = (Map<String, Object>) map.get("user");
        System.out.println(user.get("name"));
        if (identifier.equals("student")) {
            int count = studentInfoService.modifyStudentInfo((TbStudentInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("学生信息修改成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("学生信息修改失败");
        } else if (identifier.equals("teacher")) {
            int count = teacherInfoService.modifyTeacherInfo((TbTeacherInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("教师信息修改成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("教师信息修改失败");
        } else{
            int count = adminInfoService.modifyAdminInfo((TbAdminInfo) user);
            if (count > 0) {
                return ResultGenerator.genSuccessResult("管理员信息修改成功(" + count + ")");
            }
            return ResultGenerator.genFailResult("管理员信息修改失败");
        }
    }

    /**
     * INFO: 修改用户状态信息
     * @param identifier 标识符
     * @param id -> TbStudentInfo, TbTeacherInfo, TbAdminInfo
     * @param status -> 状态信息: 1(启用) 2(未启用)
     * @return
     */
    @RequestMapping(value = "/admin/user/status", method = RequestMethod.GET)
    @ResponseBody
    public Result updateUserStatus(String identifier, int id,  int status) {
        int count = userService.modifyUserStatus(identifier, id, status);
        if (count > 0) {
            return ResultGenerator.genSuccessResult("用户状态修改成功(" + count + ")");
        }
        return ResultGenerator.genFailResult("用户状态修改失败");
    }

    /**
     * INFO: 重置用户密码
     * @param identifier
     * @param user
     * @return
     */
    @RequestMapping(value = "/admin/user/repass", method = RequestMethod.GET)
    public Result updateUserPassword(String identifier, Object user) {
        int count = userService.modifyUserPassword(identifier, user);
        if (count > 0) {
            return ResultGenerator.genSuccessResult("用户密码重置成功(" + count +")");
        }
        return ResultGenerator.genFailResult("用户密码重置失败");
    }

}
