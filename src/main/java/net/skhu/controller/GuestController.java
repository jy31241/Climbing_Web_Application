package net.skhu.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.dto.User;
import net.skhu.mapper.UserMapper;

@Controller
public class GuestController {

	@Autowired	UserMapper userMapper;

	@RequestMapping({"/", "guest/index"})
    public String index() {
        return "guest/index";
    }

    @RequestMapping("guest/login")
    public String login() {
        return "guest/login";
    }

	@RequestMapping(value="guest/signup", method=RequestMethod.GET)
	public String signUp(Model model) {

		return "guest/signup";
	}

	@RequestMapping(value="guest/signup", method=RequestMethod.POST)
	public String signUp(Model model,HttpServletRequest request) {
		User user =new User();
		user.setUserId(request.getParameter("loginId"));
		user.setPassword(request.getParameter("passwd1"));
		user.setEmail(request.getParameter("email"));
		user.setNickName(request.getParameter("nickname"));
		user.setGrade(1);
		user.setUserType_id(1);
		userMapper.insert(user);


		return "redirect:login";
	}
}
