package com.etstur.recordBook;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etstur.entity.User;
import com.etstur.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		
		return "home";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		
		return "register";
	}
	
	@RequestMapping(value="/createUser", method = RequestMethod.POST)
	public ResponseEntity<String> createUser(@RequestBody User user, HttpServletRequest request) {
		
		if(user.getFirstName() != "" && user.getLastName() != "" && user.getBlood() != "" && user.getPhoneNumber() != "" && user.getAddress() != "") {
			userService.createUser(user, request);
			return new ResponseEntity<>("Kaydiniz basariyla olusturuldu.", HttpStatus.OK);
		}
		return new ResponseEntity<>("KAYIT OLUSTURULAMADI. LUTFEN ALANLARI DOLDURUNUZ..", HttpStatus.BAD_REQUEST);
		
	}
	
	@RequestMapping(value = "/user-list", method = RequestMethod.GET)
	public String userList(Model model) {
		model.addAttribute("userList", userService.getUserList());
		return "user-list";
	}
	
}
