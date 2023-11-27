package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.DBConnection;
import com.model.User;

public class UserDAO {


	public int userRegister(User user) {

		Connection con = DBConnection.getConnection();
		PreparedStatement pst = null;
		int result = 0 ;
		
		if(con == null){
			return 0;
		}
			
		try {

			String qry = "insert into user(fullName, email,phoneNumber, password) values(?,?,?,?)";
			
			pst = con.prepareStatement(qry);
			pst.setString(1, user.getFullName());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getPhoneNumber());
			pst.setString(4, user.getPassword());

			result = pst.executeUpdate();
			
			return result;


		} catch (Exception e) {
			e.printStackTrace();

		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return 0;
	}

	public User loginUser(String email, String password) {

		Connection con = DBConnection.getConnection();
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		if(con == null){
			return null;
		}
		try {
			String qry = "select * from user where email=? and password=?";

			pst =  con.prepareStatement(qry);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet resultSet = pst.executeQuery();
			
			while (resultSet.next()) {

				User user = new User();

			
				user.setId(resultSet.getInt("id"));
				user.setFullName(resultSet.getString("fullName"));
				user.setEmail(resultSet.getString("email"));
				user.setPhoneNumber(resultSet.getString("phoneNumber"));
				user.setPassword(resultSet.getString("password"));
				
				return user;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				if(rs != null){
					rs.close();
				}
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;

	}


	//change password
	public int changePassword(int userId, String newPassword) {
	
		Connection con = DBConnection.getConnection();
		PreparedStatement pst = null;
		int result = 0 ;
		
		if(con == null){
			return 0;
		}
		try {

			String qry = "update user set password=? where id=?";
			pst  = con.prepareStatement(qry);
			pst.setString(1, newPassword);
			pst.setInt(2, userId);

			result = pst.executeUpdate();

			return result;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

}