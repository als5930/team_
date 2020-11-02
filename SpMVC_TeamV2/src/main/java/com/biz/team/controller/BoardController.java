package com.biz.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.team.model.BoardVO;
import com.biz.team.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/team")
public class BoardController {
	
	@Autowired
	@Qualifier("boradServiceV1")
	private BoardService boardService;
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public String list(Model model) {
		
		List<BoardVO> doardList = boardService.selectAll();
		model.addAttribute("BOARD",doardList);
		return "/board/list";
	}
	

	

	
	
}
