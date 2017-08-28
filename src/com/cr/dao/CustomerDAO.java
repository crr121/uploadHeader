package com.cr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cr.entity.Customer;
import com.cr.util.JDBCUtil;

public class CustomerDAO {

	public Customer findCustomer(Customer customer){
		PreparedStatement ps =null;
		ResultSet rs= null;
		Connection con= JDBCUtil.getConnection();
		String sql = "select username,pwd from customer where username = ? and pwd = ?";
		 try {
			ps = con.prepareStatement(sql);
			ps.setString(1, customer.getUsername());
			ps.setString(2, customer.getPwd());
			 rs = ps.executeQuery();
			 if(rs.next()){
				customer= new Customer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			 }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return customer;
	}
	
	
	
}
