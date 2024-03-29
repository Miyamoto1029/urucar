package com.urucar.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.urucar.util.DBConnector;
import com.urucar.util.DateUtil;

public class ItemCreateCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql = "INSERT INTO item_info_transaction (item_name, item_price, item_stock,insert_date) VALUES(?, ? ,?, ?)";

	public void cerateItem(String itemName, String itemPrice, String itemStock) throws SQLException {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, itemName);
			preparedStatement.setString(2, itemPrice);
			preparedStatement.setString(3, itemStock);
			preparedStatement.setString(4, dateUtil.getDate());
			preparedStatement.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}
}
