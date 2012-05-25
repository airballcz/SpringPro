package com.uiui.test.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.uiui.test.common.PaginationSupport;
import com.uiui.test.domain.User;
import com.uiui.test.service.IUserService;

/**
 * 用户增删改查基本操作
 * @author chenz
 * 2012-2-12 下午09:45:40
 *
 */
@Controller
@RequestMapping("/system/user")
public class UserCtroller {
	
	static Logger logger = Logger.getLogger(UserCtroller.class);
	
	@Resource
	public IUserService<User> userService;
	
	private int startIndex = 0;
	
	/**
	 * 添加或更新用户信息
	 * @param user
	 * @param result
	 * @param status
	 * @return
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("user") User user, BindingResult result,
			SessionStatus status) {
		userService.addOrUpdate(user);
		status.setComplete();
		
		return this.pagination(new User(), 0);
	}
	
	/**
	 * 查看用户信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view(HttpServletRequest request) {
		User user = userService.findById(new Long(request.getParameter("id")));
		return new ModelAndView("view", "user", user);
	}
	
	/**
	 * 删除用户信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest request) {
		userService.delete(new Long(request.getParameter("id")));
		
		return this.pagination(new User(), 0);
	}
	
	/**
	 * 返回所有用户信息
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
		if(null != request.getParameter("startIndex")) {
			startIndex = new Integer(request.getParameter("startIndex")).intValue();
		}
		
		User user = new User();
		user.setAccount(request.getParameter("account"));
		return this.pagination(user, startIndex);
	}
	
	/**
	 * 通用返回分页方法模型
	 * @param user 分页条件设置
	 * @param startIndex 查询起始索引
	 * @return
	 */
	private ModelAndView pagination(User user, int startIndex) {
		PaginationSupport paginationSupport = userService.findPageByCriteria(user, startIndex);
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("users", paginationSupport.getItems());
		pageMap.put("previousIndex", paginationSupport.getPreviousIndex());
		pageMap.put("nextIndex", paginationSupport.getNextIndex());
		pageMap.put("lastIndex", paginationSupport.getLastIndex());
		pageMap.put("user", user);
		return new ModelAndView("list", "pageMap", pageMap);
	}

}
