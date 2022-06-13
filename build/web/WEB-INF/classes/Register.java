
import java.io.*;
import java.sql.*;
import java.util.logging.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/Register")
public class Register extends HttpServlet {
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
     {
         
     String    cardnumber     = request.getParameter("cardnumber");
     String    email          = request.getParameter("email");
     String    password       = request.getParameter("password");
     user      usermodel      = new user(cardnumber,email,password);
     customerDatabase regUser = new customerDatabase(connectionProvide.getConnection());
     
     if(regUser.Saveuser(usermodel))
     {
    	 response.sendRedirect("login.jsp");
     }
     
     else 
     {
    	 String errmessage = "user exist";
    	 HttpSession session = request.getSession();
    	 session.setAttribute("Regerror",errmessage);
    	 response.sendRedirect("index.jsp");
     }
     
   }


}
