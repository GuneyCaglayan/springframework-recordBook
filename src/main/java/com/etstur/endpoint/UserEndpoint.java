package com.etstur.endpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.etstur.service.UserService;

@RestController
@RequestMapping(value="/rest")
public class UserEndpoint {
	
	@Autowired
	private UserService userService;
}
