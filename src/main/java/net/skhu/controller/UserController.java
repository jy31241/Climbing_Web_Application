package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.User;
import net.skhu.mapper.UserMapper;
import net.skhu.mapper.UserTypeMapper;

@Controller
public class UserController {
    @Autowired UserMapper userMapper;
    @Autowired UserTypeMapper userTypeMapper;


    @RequestMapping("user/index")
    public String index() {
        return "user/index";
    }

    @RequestMapping("user/mypage")
    public String mypage() {
        return "user/mypage";
    }


    @RequestMapping("member/list")
    public String list(Model model) {
        List<User> users = userMapper.findAll();
        model.addAttribute("users", users);
        return "member/list";
    }
}
