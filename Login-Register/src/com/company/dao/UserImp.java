package com.company.dao;

import java.sql.*;

import com.company.util.DBUtil;

public class UserImp implements UserDao{

	@Override
	public boolean isValidUser(String email, String password) {
		String query="SELECT *FROM register WHERE email=? AND password=?";
		
		try(Connection connection=DBUtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query)) {
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet=preparedStatement.executeQuery();
			
			return resultSet.next();			
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
		String query = "INSERT into register(name, email, username, password, gender) VALUES(?,?,?,?,?)";
		
		try(Connection connection=DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {
				
				preparedStatement.setString(1, user.getName());
				preparedStatement.setString(2, user.getEmail());
				preparedStatement.setString(3, user.getUsername());
				preparedStatement.setString(4, user.getPassword());
				preparedStatement.setString(5, user.getGender());

				
				int rows=preparedStatement.executeUpdate();
				
				return rows>0;			
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		
	}

}
