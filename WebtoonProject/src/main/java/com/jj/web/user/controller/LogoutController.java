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


@WebServlet("/logout.do")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public LogoutController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UserDto user =  (UserDto)session.getAttribute("loginUser");
		
		int result = new UserService().logOut(user);

		if(result > 0) {
			session.removeAttribute("loginUser");
			response.sendRedirect(request.getContextPath());
			
		}else {
			session.setAttribute("message", "실패");
			response.sendRedirect(request.getContextPath()+"/fail.do");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
