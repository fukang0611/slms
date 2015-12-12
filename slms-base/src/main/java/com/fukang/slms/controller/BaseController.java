package com.fukang.slms.controller;

import org.springframework.stereotype.Controller;

import java.util.HashMap;
import java.util.Map;

@Controller
public class BaseController {

    public Map returnData(String status, String msg) {
        Map<String, String> map = new HashMap<>();
        map.put("status", status);
        map.put("msg", msg);
        return map;
    }

}