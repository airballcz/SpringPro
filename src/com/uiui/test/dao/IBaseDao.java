package com.uiui.test.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

/**
 * 泛型DAO接口
 * 
 * @author chenz 2012-3-5 下午10:39:03
 * 
 * @param <T>
 */
public interface IBaseDao<T> {
	
	/**
	 * 加载数据
	 */
	public T findById(Long id);

	/**
	 * 添加或保存数据
	 */
	public void addOrUpdate(T entity);

	/**
	 * 删除数据
	 * @param entity
	 */
	public void delete(T entity);

	/**
	 * 返回所有数据信息
	 * @return
	 */
	public List<T> findAll();
	
	/**
	 * 根据查询条件返回结果集
	 * @param detachedCriteria
	 * @return
	 */
	public List<T> findByCriteria(DetachedCriteria detachedCriteria);
	
	/**
	 * 根据查询条件，及结果集大小和开始序列，返回结果集
	 * @param detachedCriteria
	 * @param startIndex
	 * @param size
	 * @return
	 */
	public List<T> findByCriteria(DetachedCriteria detachedCriteria, int size, int startIndex);
	
	/**
	 * 根据查询条件，返回结果集总数
	 * @param detachedCriteria
	 * @return
	 */
	public int totalByCriteria(DetachedCriteria detachedCriteria);
}
