package com.jj.web.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.jj.web.user.model.dto.UserDto;

public class UserDao {

	public int insertUser(SqlSession sqlSession, UserDto userDto) {
		return sqlSession.insert("userMapper.insertUser",userDto);
	}

}
