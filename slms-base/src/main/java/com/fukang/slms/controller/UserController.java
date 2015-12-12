package com.fukang.slms.controller;

import com.fukang.slms.service.IUserService;
import com.fukang.slms.utility.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    IUserService iUserService;

    @RequestMapping("/addUser")
    @ResponseBody
    public Object addUser(String username, String password) {

        if (iUserService.addUser(username, password)) {
            return super.returnData("success", "add user success!");
        } else {
            return super.returnData("failure", "add user failure!");
        }
    }

    @RequestMapping("/getUsersList")
    @ResponseBody
    public Object getUsersList(Pager pager) {

        List userList = iUserService.getUsersList(pager);
        Map<String, Object> data = new HashMap<>();
        data.put("total", pager.getTotalRows());
        data.put("rows", userList);
        return data;
    }

    @RequestMapping("/delUsersByIds")
    @ResponseBody
    public Object delUsersByIds(String ids) {
        String[] idsArray = ids.split(",");
        for (String s : idsArray) {
            iUserService.delUserByPrimaryKey(s);
        }
        return super.returnData("success", "删除用户成功!");
    }

    @RequestMapping("/loginCheck")
    @ResponseBody
    public Object loginCheck(String username, String password) {

        boolean result = iUserService.loginCheck(username, password);
        String status = result ? "success" : "failure";
        String msg = result ? "login success!" : "login failed!";
        return super.returnData(status, msg);
    }

    @RequestMapping("/regUser")
    @ResponseBody
    public Object regUser(String username, String password) {

        boolean result = iUserService.regUser(username, password);
        String status = result ? "success" : "failure";
        String msg = result ? "register user success!" : "register user failed!";

        return super.returnData(status, msg);
    }

    @RequestMapping("/validRegUser")
    @ResponseBody
    public Object validRegUser(String username) {

        Map<String, String> map = new HashMap<>();
        boolean result = iUserService.getUserByUsername(username) == null;
        map.put("valid", result ? "true" : "false");

        return map;
    }
}

