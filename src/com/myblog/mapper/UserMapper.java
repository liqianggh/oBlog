package com.myblog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.myblog.po.User;

public interface UserMapper {
	
	public User findUser(User user )throws Exception;
 
}