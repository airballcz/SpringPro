package com.uiui.test.service.impl;

import java.util.Collection;
import java.util.HashSet;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.uiui.test.dao.IUserDao;

/**
 * 用户登录账户验证类
 * 对验证用户进行授权并重新返回UserDetails对象
 * @author laopo
 *
 */
@Service("myUserDetailsService")
public class UserDetailServiceImpl implements UserDetailsService {
	
	@Resource
	private IUserDao userDao;

	@Override
	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException {
		com.uiui.test.domain.User user = userDao.findByUsernam(userName);
		if(null == user) {
			throw new UsernameNotFoundException(userName);
		}
		
		// 根据用户账户授予用户权限
		Collection<GrantedAuthority> grantedAuths = new HashSet<GrantedAuthority>();
		grantedAuths.add(new GrantedAuthorityImpl("ROLE_USER"));
		User userDetails = new User(user.getAccount(), user.getPassword(), true, true, true, true, grantedAuths);
		
		return userDetails;
	}

}
