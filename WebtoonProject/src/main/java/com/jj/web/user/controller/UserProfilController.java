package com.jj.web.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jj.web.user.model.dto.UserDto;
import com.jj.web.user.model.service.UserService;

@WebServlet("/user-profil.do")
public class UserProfilController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UserProfilController() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//해줘야할일 session에 로그인된 사용자의 정보를 뽑아서 디비에서 사용자 정보를 조회회온뒤 그 결과를 setarrtibute로 담자
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto)session.getAttribute("loginUser");
		if(user == null) {
			session.setAttribute("message", "비정상적인 접근입니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/fail.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("/WEB-INF/views/user/userProfil.jsp").forward(request, response);
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
