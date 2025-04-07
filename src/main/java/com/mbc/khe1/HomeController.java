package com.mbc.khe1;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller //어노테이션 = 주석처리
public class HomeController {
	@Autowired
	SqlSession sqlSession; 
	
	
	@RequestMapping(value = "/")
	public String home() {
		return "main";
	}
	
	@RequestMapping(value = "/input1")
	public String kk1() {
		return "input2";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String kk2 (HttpServletRequest request, Model model) {
		String name=request.getParameter("name");
		int kor=Integer.parseInt(request.getParameter("kor"));
		int eng=Integer.parseInt(request.getParameter("eng"));
		int mat=Integer.parseInt(request.getParameter("mat"));
		
		Service ss=sqlSession.getMapper(Service.class);
		ss.insertm(name, kor, eng, mat);		
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/out")
	public String kk3 (Model model) {
		Service ss=sqlSession.getMapper(Service.class);
		ArrayList<ScoreDTO> list = ss.out2();
		model.addAttribute("list", list);
		return "out";
	
	
	
	
	
	
	
	}
	
}
