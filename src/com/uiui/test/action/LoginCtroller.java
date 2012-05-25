package com.uiui.test.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginCtroller {

	private static final long serialVersionUID = 8526975316644022612L;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login() {
		
		System.out.println("do something for login");
		
		return new ModelAndView("index");
	}
}
