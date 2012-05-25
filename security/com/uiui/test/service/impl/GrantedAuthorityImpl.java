package com.uiui.test.service.impl;

import org.springframework.security.core.GrantedAuthority;

/**
 * 实现GrantedAuthority的getAuthority方法
 * @author chenz
 * 2011-7-26 下午10:00:06
 *
 */
public class GrantedAuthorityImpl implements GrantedAuthority {

	private static final long serialVersionUID = 8420215097418497L;
	
	private String role;
	
	public GrantedAuthorityImpl(String role) {
		this.role = role;
	}

	@Override
	public String getAuthority() {
		return this.role;
	}

}
