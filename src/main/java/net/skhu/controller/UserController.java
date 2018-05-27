package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.dto.UserType;
import net.skhu.dto.User;
import net.skhu.mapper.UserTypeMapper;
import net.skhu.mapper.UserMapper;

@Controller
@RequestMapping("/member")

public class UserController {
    @Autowired UserMapper userMapper;
    @Autowired UserTypeMapper userTypeMapper;

    
    @RequestMapping("list")
    public String list(Model model) {
        List<User> users = userMapper.findAll();
        model.addAttribute("users", users);
        return "member/list";
    }
}
