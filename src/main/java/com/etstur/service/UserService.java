package com.etstur.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.etstur.dao.UserDAO;
import com.etstur.entity.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public Long createUser(User user, HttpServletRequest request) {
		return userDAO.insert(user);
	}
	
	public ArrayList<User> getUserList() {
		return userDAO.getUserList();
	}
}
