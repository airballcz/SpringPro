package com.uiui.test.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;

import com.uiui.test.dao.IBaseDao;

public class BaseDao<T> implements IBaseDao<T> {
	
	private Class<T> clazz;
	
	@Resource
	protected SessionFactory sessionFactory;
	
	/**
	 * 返回泛型对象真实class类型
	 */
	@SuppressWarnings("unchecked")
	public BaseDao() {
		clazz = (Class<T>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findById(Long id) {
		return (T) this.sessionFactory.getCurrentSession().get(clazz, id);
	}

	@Override
	public void addOrUpdate(T entity) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(entity);
	}

	@Override
	public void delete(T entity) {
		this.sessionFactory.getCurrentSession().delete(entity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		Criteria criteria = this.sessionFactory.getCurrentSession().createCriteria(clazz);
		criteria.addOrder(Order.desc("id"));
		return criteria.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCriteria(DetachedCriteria detachedCriteria) {
		Criteria criteria  = detachedCriteria.getExecutableCriteria(this.sessionFactory.getCurrentSession());
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCriteria(DetachedCriteria detachedCriteria, int size, int startIndex) {
		Criteria criteria  = detachedCriteria.getExecutableCriteria(this.sessionFactory.getCurrentSession());
		return criteria.setFirstResult(startIndex).setMaxResults(size).list();
	}
	
	@Override
	public int totalByCriteria(DetachedCriteria detachedCriteria) {
		Criteria criteria  = detachedCriteria.getExecutableCriteria(this.sessionFactory.getCurrentSession());
		int total = ((Integer) criteria.setProjection(Projections.rowCount()).uniqueResult()).intValue();
		criteria.setProjection(null);
		return total;
	}

}
