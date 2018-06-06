package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.dto.Mountain;
import net.skhu.mapper.MountainMapper;

@Controller
@RequestMapping("/mountain")
public class MountainController {

	@Autowired MountainMapper mountainMapper;

	@RequestMapping("mountainreview")
	public String mountainreview(Model model,@RequestParam("id")int id) {
		Mountain mountain= mountainMapper.findOne(id);
		model.addAttribute("mountain", mountain);
		return "mountain/mountainreview";
	}

}
