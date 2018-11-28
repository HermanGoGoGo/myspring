package com.herman.springproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.herman.springproject.mapper.UserMapper;
import com.herman.springproject.pojo.User;
import com.herman.springproject.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> getUserList() {
		return this.userMapper.getUserList();
	}

}
