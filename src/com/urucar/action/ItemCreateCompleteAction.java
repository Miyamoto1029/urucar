package com.urucar.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.urucar.dao.ItemCreateCompleteDAO;

public class ItemCreateCompleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	public String execute() throws SQLException {
		ItemCreateCompleteDAO itemCreateCompleteDAO = new ItemCreateCompleteDAO();
		itemCreateCompleteDAO.cerateItem(session.get("itemName").toString(), session.get("itemPrice").toString(), session.get("itemStock").toString());
		String result = SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
