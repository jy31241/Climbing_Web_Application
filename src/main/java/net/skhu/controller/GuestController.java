package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/guest")
public class GuestController {

	@RequestMapping("login")
    public String login(Model model) {
        return "guest/login";
    }

	@RequestMapping(value="signup", method=RequestMethod.GET)
	public String signUp(Model model) {
		return "guest/signup";
	}
}
