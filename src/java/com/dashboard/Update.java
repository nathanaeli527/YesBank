
package com.dashboard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class Update {
    
    public boolean userinfoupdate(int accountbalance,String accountnumber)
	{   
		boolean set = false;
                PreparedStatement ps = null;
		
	    try
		{
                 
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:/petson","root","");
	    	String sql="Update AccountBalance set balance=? where cardnumber=accountnumber";
                ps = con.prepareStatement(sql);
                ps.setInt(1,accountbalance);
                ps.executeUpdate();
	        set = true;
		}
	    
	    catch(Exception e)
	    {
	    	e.getStackTrace();
	    }
	    return set;
	}	
    
}
