package com.urucar.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.urucar.dao.BuyItemCompleteDAO;
import com.urucar.dao.ItemDetailsDAO;
import com.urucar.dto.ItemInfoDTO;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware {

	private String id;
	private String user_id;
	public Map<String, Object> session;
	private BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();
	ItemInfoDTO itemDetailsDTO = new ItemInfoDTO();

	public String execute() throws SQLException {
		ItemDetailsDAO dao = new ItemDetailsDAO();
		itemDetailsDTO = dao.getItemInfo(id);
		user_id = session.get("login_user_id").toString();
		buyItemCompleteDAO.buyItemeInfo( id, user_id );
		String result = SUCCESS;
		return result;
	}


	public String getId() {
	return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public ItemInfoDTO getItemDetailsDTO() {
		return itemDetailsDTO;
	}

	public void setItemDetailsDTO(ItemInfoDTO itemDetailsDTO) {
		this.itemDetailsDTO = itemDetailsDTO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}