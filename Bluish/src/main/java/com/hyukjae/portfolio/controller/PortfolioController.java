package com.hyukjae.portfolio.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class PortfolioController {
	
	@RequestMapping(value = "/bluish", method = RequestMethod.POST)
	public String bluish(Locale locale, Model model) {
		
		model.addAttribute("title", "포트폴리오");
		model.addAttribute("view", "../portfolio/bluish.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/papaf", method = RequestMethod.POST)
	public String papaf(Locale locale, Model model) {
		
		model.addAttribute("title", "포트폴리오");
		model.addAttribute("view", "../portfolio/papaf.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/kiwii", method = RequestMethod.POST)
	public String kiwii(Locale locale, Model model) {
		
		model.addAttribute("title", "포트폴리오");
		model.addAttribute("view", "../portfolio/kiwii.jsp");
		
		return "frame/frame";
	}
	
	@RequestMapping(value = "/ggumddakji", method = RequestMethod.POST)
	public String ggumddakji(Locale locale, Model model) {
		
		model.addAttribute("title", "포트폴리오");
		model.addAttribute("view", "../portfolio/ggumddakji.jsp");
		
		return "frame/frame";
	}
}
