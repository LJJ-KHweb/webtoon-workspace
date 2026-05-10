package com.jj.web.user.model.service;

import org.apache.ibatis.session.SqlSession;

import com.jj.web.common.Template;
import com.jj.web.user.model.dao.UserDao;
import com.jj.web.user.model.dto.UserDto;

public class UserService {
	
	private UserDao ud = new UserDao();

	public int insertUser(UserDto userDto) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = ud.insertUser(sqlSession, userDto);
		
		if(result >0 ) {
			sqlSession.commit();
		}
		sqlSession.close();
		
		return result;
	}
	
	

}
