package com.myblog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.myblog.mapper.UserMapper;
import com.myblog.po.User;
import com.myblog.service.UserService;

public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	@Override
	public User findUser(User user ) throws Exception {
		User userExist = userMapper.findUser(user);
		return userExist;
	}
	
	

}
