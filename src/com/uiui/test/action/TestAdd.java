package com.uiui.test.action;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.uiui.test.domain.User;
import com.uiui.test.service.impl.UserService;

public class TestAdd {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ClassPathXmlApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService) cxt.getBean("userService");
		User user = new User();
		user.setAccount("chenzhe");
		user.setPassword("123456");
		user.setFullName("陈哲");
//		userService.add(user);
	}

}
