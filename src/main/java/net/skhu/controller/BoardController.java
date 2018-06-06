package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Board;
import net.skhu.mapper.BoardMapper;
import net.skhu.mapper.BoardTypeMapper;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired BoardMapper boardMapper;
    @Autowired BoardTypeMapper boardTypeMapper;

    @RequestMapping("mozip")
    public String list(Model model) {
        List<Board> boards = boardMapper.findAll();
        model.addAttribute("boards", boards);
        return "board/mozip";
    }

    @RequestMapping("review")
    public String list1(Model model) {
        List<Board> boards = boardMapper.findAll();
        model.addAttribute("boards", boards);
        return "board/review";
    }

    @RequestMapping("bestreview")
    public String list2(Model model) {
        List<Board> boards = boardMapper.findAll();
        model.addAttribute("boards", boards);
        return "board/bestreview";
    }

    @RequestMapping("write")
    public String list3(Model model) {
        return "board/write";
    }
}
