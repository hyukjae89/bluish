package com.hyukjae.portfolio.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FooterController {
	
	@RequestMapping(value = "/describe", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		
		model.addAttribute("title", "Introduce");
		model.addAttribute("view", "describe_view.jsp");
		
		return "frame/frame";
	}
}
