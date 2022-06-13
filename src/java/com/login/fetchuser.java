package com.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class fetchuser {
	Connection con;
	
	public  fetchuser(Connection con)
	{
		this.con = con;
	}
	
	public boolean usersearch(Userdetail userfetch)
	{
		boolean status = false;
		
		try 
		{
			String searchquery = "select * from customer where cardnumber=? and password=?";
			PreparedStatement pst = con.prepareStatement(searchquery);
			pst.setString(1,userfetch.getPinnumber());
			pst.setString(2,userfetch.getPassword());
		    ResultSet rs = pst.executeQuery();
		    
		    status=true;
		}
		
		catch(Exception e)
		{
			e.getMessage();
		}
		return status;
		
		
	}

}
