package com.hyukjae.portfolio.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyukjae.portfolio.bean.MemberBean;
import com.hyukjae.portfolio.dao.MemberDaoImpl;

@Controller
public class MemberController {

	@Autowired
	MemberDaoImpl memberDaoImpl;
	
	public void setMemberDao(MemberDaoImpl memberDaoImpl){
		this.memberDaoImpl = memberDaoImpl;
	}
	
	@RequestMapping(value = "/membercheck", method = RequestMethod.POST)
	public String memberCheck(Locale locale, Model model, MemberBean bean, HttpSession session) {
		
		MemberBean getBean = memberDaoImpl.getMemberCheck(bean.getId(), bean.getPass());
		if(getBean != null){
			model.addAttribute("title", "Introduce");
			model.addAttribute("view", "describe_view.jsp");
			
			session.setAttribute("idKey", getBean.getId());
			session.setAttribute("nameKey", getBean.getName());
			session.setMaxInactiveInterval(60*300);
		}
		else{
			model.addAttribute("title", "로그인");
			model.addAttribute("view", "../member/member_login_view.jsp");
			model.addAttribute("login_fail_mention", "로그인 실패<br>아이디와 비밀번호를 확인해 주세요");
		}
		
		return "frame/frame";
	}
}
