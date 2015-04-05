package com.hyukjae.portfolio.controller;


import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HeaderController {
	
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		
		model.addAttribute("title", "프로필");
		model.addAttribute("view", "../profile/profile.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/portfolio", method = RequestMethod.GET)
	public String portfolio(Locale locale, Model model) {
		
		model.addAttribute("title", "포트폴리오");
		model.addAttribute("view", "../portfolio/portfolio_page.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Locale locale, Model model) {
		
		model.addAttribute("title", "게시판");
		model.addAttribute("view", "../board/board_page.jsp");
		model.addAttribute("board_view", "board_entrance_view.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/memberlogin", method = RequestMethod.GET)
	public String memberLogin(Locale locale, Model model) {
		
		model.addAttribute("title", "로그인");
		model.addAttribute("view", "../member/member_login_view.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/memberlogout", method = RequestMethod.GET)
	public String memberLogout(Locale locale, Model model, HttpSession session) {
		
		model.addAttribute("title", "Introduce");
		model.addAttribute("view", "describe_view.jsp");
		
		session.setAttribute("idKey", null);
		session.setAttribute("nameKey", null);
		
		return "frame/frame";
	}
	

}
