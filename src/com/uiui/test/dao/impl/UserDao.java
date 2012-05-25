package com.uiui.test.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.uiui.test.dao.IUserDao;
import com.uiui.test.domain.User;

/**
 * 
 * @author chenz 2012-2-12 下午07:20:26
 * 
 */
@Repository
public class UserDao extends BaseDao<User> implements IUserDao {

	@SuppressWarnings("unchecked")
	@Override
	public User findByUsernam(String username) {
		User user = null;
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"from User user where user.account = :account");
		query.setString("account", username);
		List<User> list = query.list();
		if (null != list && list.size() > 0) {
			user = (User) list.get(0);
		}
		return user;
	}

}
