package com.urucar.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteConfirmAction extends ActionSupport {
	String loginId;
	public String execute() {
		return SUCCESS;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
}
