package com.uiui.test.service;

import java.util.List;

import com.uiui.test.common.PaginationSupport;

public interface IUserService<User> {

	/**
	 * 添加或修改用户信息
	 * @param user
	 */
	public void addOrUpdate(User user);
	
	/**
	 * 根据编号查询用户信息
	 * @param id
	 * @return
	 */
	public User findById(Long id);
	
	/**
	 * 根据查询条件返回用户信息结果集
	 * @param user
	 * @return
	 */
	public List<User> findByCriteria(final User user);
	
	/**
	 * 根据查询条件返回用户信息分页结果集
	 * @param user
	 * @return
	 */
	public PaginationSupport findPageByCriteria(final User user, int startIndex);
	
	/**
	 * 返回所有用户列表信息
	 * @return
	 */
	public List<User> findAll();
	
	/**
	 * 根据编号删除用户信息
	 * @param id
	 */
	public void delete(Long id);
}
