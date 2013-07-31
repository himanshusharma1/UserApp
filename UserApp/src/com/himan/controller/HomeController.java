package com.himan.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.himan.domain.User;
import com.himan.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("userName") String userName, @RequestParam("password") String password) {
		if(userName.equals("abc") && password.equals("123")) {
			//return new ModelAndView("redirect:/register.html");
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("username", "ABC");
			return new ModelAndView("home", "model", model);
			
		} else {
			return new ModelAndView("login", "message", "failed to login");
		}
		
	}
	@RequestMapping("/loginPage")
	public ModelAndView login() {
		return new ModelAndView("login", "message", "");
	}
	
	@RequestMapping("/register")
	public ModelAndView getRegisterForm(@ModelAttribute("user") User user,
			BindingResult result) {
		ArrayList<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		ArrayList<String> city = new ArrayList<String>();
		city.add("Delhi");
		city.add("Kolkata");
		city.add("Chennai");
		city.add("Bangalore");
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("gender", gender);
		model.put("city", city);
		System.out.println("Register Form");
		return new ModelAndView("Register", "model", model);
	}

	@RequestMapping("/saveUser")
	 @ResponseBody
	public String saveUserData(@ModelAttribute("user") User user,
			BindingResult result) {
		userService.addUser(user);
		System.out.println("Save User Data");
		return "SUCCESS";
	}

	@RequestMapping("/userList")
	public ModelAndView getUserList() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", userService.getUser());
		return new ModelAndView("UserDetails", model);

	}
	
	@RequestMapping("/deleteUser")
	public ModelAndView deleteUserData(@ModelAttribute("user") User user,
			BindingResult result) {
		userService.deleteUser(user);
		System.out.println("Deleted User Data");
		return new ModelAndView("redirect:/userList.html");
	}
}
