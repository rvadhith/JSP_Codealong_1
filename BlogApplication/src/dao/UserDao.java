package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import utility.ConnectionManager;

public class UserDao implements UserDaoInterface {

	@Override
	public int signUp(User user) throws Exception {
		String INSERT_USERS_SQL = "INSERT INTO USERS(email,password)VALUES(?,?)";
		
		int result = 0;
		
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement(INSERT_USERS_SQL);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			System.out.println(ps);
			result = ps.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean loginUser(User user) throws Exception {
		boolean status = false;
		
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from USERS2 where email=? and password=?");
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			rs.next();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
}
