package com.login;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionProvide {
	
	private static Connection con;
	
	public static Connection getConnection()
	{
		try
		{
			   Class.forName("com.mysql.cj.jdbc.Driver");
		       con = DriverManager.getConnection("jdbc:mysql://localhost:/petson","root","");
		}
		
		catch(Exception e)
		{
			e.getStackTrace();
		}
		return con;
		
	}

}
