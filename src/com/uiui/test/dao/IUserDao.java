package com.uiui.test.dao;

import com.uiui.test.domain.User;


/**
 * 用户对象DAO
 * @author chenz
 * 2012-2-12 下午07:19:05
 *
 */
public interface IUserDao extends IBaseDao<User> {
	
	/**
	 * 根据账户名获取User对象信息
	 * @param username 账户名
	 * @return
	 */
	public User findByUsernam(String username);
}
