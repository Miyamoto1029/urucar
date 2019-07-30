package com.urucar.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.urucar.dao.ItemDetailsDAO;
import com.urucar.dto.ItemInfoDTO;


public class HomeAction extends ActionSupport implements SessionAware{

	private String id;
	private ItemInfoDTO itemDetailsDTO;
	public Map<String, Object> session;


	public String execute() throws SQLException {

	String result = "login";
	if (session.containsKey("login_user_id")) {

		ItemDetailsDAO dao = new ItemDetailsDAO();
		itemDetailsDTO = dao.getItemInfo(id);
		session.put("imageFilePath", itemDetailsDTO.getImageFilePath());
		session.put("imageFileName", itemDetailsDTO.getImageFileName());
		result = SUCCESS;
	}
	return result;
}

	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public ItemInfoDTO getItemDetailsDTO(){
		return itemDetailsDTO;
	}

	public void setItemDetailsDTO(ItemInfoDTO itemDetailsDTO){
		this.itemDetailsDTO = itemDetailsDTO;
	}


	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
	public Map<String, Object> getSession() {
		return this.session;
	}
}
