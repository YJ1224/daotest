package com.rpweb.web;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.daotest.service.Daoservice;

/* 공통기능구현 클래스 : */
public class Ic implements HandlerInterceptor {
	@Autowired
	Daoservice ds;
	@Override 
	// 특정 범위의 패키지에 있는 메서드가 실행되기 전에 실행될 공통 메서드
	public boolean preHandle(HttpServletRequest r, HttpServletResponse res, Object o)
			throws Exception {
		//HttpSession s = r.getSession(); : 세션가능(request, response 가 있기 때문에)
		String ln = r.getParameter("ln");
		ln = Objects.isNull(ln) || ln == "" ? "null" : ln;
		System.out.printf("o %s",o);
		if(ln.equals("d_id") && ln.equals("d_pass")) {
			System.out.println("LOGIN PASS");
			return true;
			//return값이 true이면 핵심메서드가 실행o, false면 핵심메서드 실행x
		}else {
			res.sendRedirect("/daotest/login.jsp");
			return false;
		}
	
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle 실행");

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
