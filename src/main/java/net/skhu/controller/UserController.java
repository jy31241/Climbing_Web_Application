package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Board;
import net.skhu.dto.User;
import net.skhu.mapper.BoardMapper;
import net.skhu.mapper.UserMapper;
import net.skhu.mapper.UserTypeMapper;

@Controller
public class UserController {
    @Autowired UserMapper userMapper;
    @Autowired UserTypeMapper userTypeMapper;
    @Autowired BoardMapper boardMapper;

    @RequestMapping("user/index")
    public String index(Model model) {
    	List<Board> boardBest = boardMapper.findByBestLimit();
		List<Board> boardMozip= boardMapper.findByLastestMozip();
		model.addAttribute("boardBest", boardBest);
		model.addAttribute("boardMozip", boardMozip);
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
