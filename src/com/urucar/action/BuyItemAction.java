package com.urucar.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;

	private String id;

	public String execute() {
		String result = SUCCESS;
		return result;
	}


	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
