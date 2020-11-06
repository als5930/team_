package com.biz.team.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.team.model.JoinVO;
import com.biz.team.model.LoginVO;
import com.biz.team.service.JoinService;
import com.biz.team.service.LoginService;


@Controller
@RequestMapping(value="/user")
public class UserController {
   
	@Autowired
	@Qualifier("loginServiceV1")
    private	LoginService loginService;
	
	@Autowired
	@Qualifier("joinServiceV1")
	private	JoinService joinService;
	
	
	
   @RequestMapping(value="/login",method=RequestMethod.GET)
   public String login(Model model) {
	   
		List<LoginVO> loginList = loginService.selectAll();
		model.addAttribute("loginList", loginList);
      return "/user/login";
   }
   
   @RequestMapping(value="/logout",method=RequestMethod.GET)
   public String logout() {
      return "/user/logout";
   }
   
   @RequestMapping(value = "/join",method=RequestMethod.GET)
   public String join(Model model) {
		List<JoinVO> joinList = joinService.selectAll();
		model.addAttribute("loginList", joinList);
      return "/user/join";
      
   }
}

