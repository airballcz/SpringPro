package com.uiui.test.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户表域对象
 * @author chenz
 * 2011-9-5 下午09:47:04
 *
 */
@Entity
@Table(name="sys_user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private Long id;
	
	/*
	 * 登录账户
	 */
	@Column
	private String account;
	
	/*
	 * 登录密码
	 */
	@Column
	private String password;
	
	/*
	 * 用户名全称
	 */
	@Column
	private String fullName;
	
	/*
	 * 手机号码
	 */
	@Column
	private String cellphone;

	/*
	 * 座机号码
	 */
	@Column
	private String tellphone;
	
	/*
	 * 电子邮件
	 */
	@Column
	private String email;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getTellphone() {
		return tellphone;
	}

	public void setTellphone(String tellphone) {
		this.tellphone = tellphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
