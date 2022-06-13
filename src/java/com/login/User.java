package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/User")
public class User extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		String username      = request.getParameter("username");
		String password      = request.getParameter("password");
		
		Userdetail data      = new Userdetail(username,password); //have no error
		fetchuser  find      = new fetchuser(connectionProvide.getConnection());
		
		if(find.usersearch(data))
			
		{   
		    request.setAttribute("username",username);   
		    RequestDispatcher ds = request.getRequestDispatcher("dashboarddirection");
       	            ds.forward(request, response);
		}
		
		else 
		{       String message = "useer not found from database";
                        request.setAttribute("usernotfound", message);
			RequestDispatcher ds = request.getRequestDispatcher("index.jsp");
                        ds.forward(request, response);
		}

	}
}
