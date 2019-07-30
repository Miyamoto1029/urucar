package com.urucar.action;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItem2Action extends ActionSupport{

	String id;
	public String execute() {
		return SUCCESS;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}

