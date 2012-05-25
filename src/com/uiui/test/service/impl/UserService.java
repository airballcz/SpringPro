package com.uiui.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.uiui.test.common.PaginationSupport;
import com.uiui.test.dao.IUserDao;
import com.uiui.test.domain.User;
import com.uiui.test.service.IUserService;

/**
 * 用户管理Service层
 * 
 * @author chenz 2012-3-3 下午07:03:08
 * 
 * @param <User>
 */
@Service("userService")
public class UserService implements IUserService<User> {

	@Resource
	private IUserDao userDao;

	@Override
	public void addOrUpdate(User user) {
		userDao.addOrUpdate(user);
	}

	@Override
	public User findById(Long id) {
		return userDao.findById(id);
	}

	@Override
	public List<User> findByCriteria(final User user) {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(User.class);
		if (null != user.getAccount() && !user.getAccount().equals("")) {
			detachedCriteria.add(Restrictions.like("account",
					user.getAccount(), MatchMode.ANYWHERE));
		}
		detachedCriteria.addOrder(Order.desc("id"));
		return userDao.findByCriteria(detachedCriteria);
	}

	@Override
	public PaginationSupport findPageByCriteria(final User user, int startIndex) {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(User.class);
		if (null != user.getAccount() && !user.getAccount().equals("")) {
			detachedCriteria.add(Restrictions.like("account",
					user.getAccount(), MatchMode.ANYWHERE));
		}
		detachedCriteria.addOrder(Order.desc("id"));

		int totalNum = userDao.totalByCriteria(detachedCriteria);
		List<User> items = userDao.findByCriteria(detachedCriteria, 2,
				startIndex);
		PaginationSupport paginationSupport = new PaginationSupport(items,
				totalNum, 2, startIndex);
		return paginationSupport;
	}

	@Override
	public void delete(Long id) {
		userDao.delete(this.findById(id));
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

}
