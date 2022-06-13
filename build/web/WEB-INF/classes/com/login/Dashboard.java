package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



@WebServlet("/dashboarddirection")
public class Dashboard extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	Connection con = null;
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	 	String name = req.getAttribute("username").toString();
	 
	 	try {
	 		
	 		Class.forName("com.mysql.cj.jdbc.Driver");
		        con = DriverManager.getConnection("jdbc:mysql://localhost:/petson","root","");
	 		
	 		String searchquery = "select * from CustomerDetails where cardnumber=?";
			PreparedStatement pst = con.prepareStatement(searchquery);
			pst.setString(1,name);
		        ResultSet rs = pst.executeQuery();
			rs.next();
			HttpSession session=req.getSession();
			session.setAttribute("cardnumber",name);
		     
			 String fname = rs.getString("Fname");
			 String lname = rs.getString("Lname");
			 String Email = rs.getString("Email");
			 String Adress= rs.getString("Adress");
			 String Gender= rs.getString("Gender");
			 
			 // searching balance money from the database
			 
			 String tafutepesa = "select * from  AccountBalance where cardnumber = ?";
			 PreparedStatement ps = con.prepareStatement(tafutepesa);
			 ps.setString(1,name);
			 ResultSet ri = ps.executeQuery();
		         ri.next();
			 
			 int balance = Integer.parseInt(ri.getString("balance"));
                         session.setAttribute("BA", balance);
			 UserINformation user = new UserINformation(fname,lname,Email,Adress,Gender,balance);
                         
                         String Fname = user.getFname();
                         String Lname = user.getLname();
                         String eme   = user.getEmail();
                         String ade   = user.getAdress();
                         int  balancee = user.getBalance();
                         session.setAttribute("emailsession", eme);
                         session.setAttribute("lname", Lname);
                         session.setAttribute("adresssesiom",ade);
                         session.setAttribute("Fname", Fname);
                        
                         
                         
			 RequestDispatcher ds = req.getRequestDispatcher("dashboard.jsp");
			 ds.forward(req, res); 
                         
                         
			 	  
	 	}
	   catch(Exception e)
	 	{
		   e.getMessage();
	 	}
		 
		
	}

}
