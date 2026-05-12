package com.jj.web.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jj.web.user.model.dto.UserDto;
import com.jj.web.user.model.service.UserService;


@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public JoinController() {
        super();
       
    }

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		
		String userId =request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String nickName = request.getParameter("nickName");
		
		int result = new UserService().insertUser(new UserDto(userId, userPwd, userName, email, nickName));
		
		if(result > 0) {
			response.sendRedirect("/toon");
		}else {
			request.setAttribute("message", "회원 가입에 실패했습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/fail.jsp").forward(request, response);
		}
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
