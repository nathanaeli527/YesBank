package com.dashboard;

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

@WebServlet("/transfer")
public class transfer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
     String cardnum = request.getParameter("cardnumber");
     String amount  = request.getParameter("money");
     PrintWriter out = response.getWriter();
     HttpSession session = request.getSession();
      
      if(session.getAttribute("cardnumber").equals(cardnum))
                             {   
                                 String message  = "Your can't send money to the same account";
                                 request.setAttribute("samecard",message);
                                 RequestDispatcher backtohome = request.getRequestDispatcher("dashboard.jsp");
                                 backtohome.forward(request, response);  
                             }
  
   
  
     try 
     {
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:/petson","root","");
 
         PreparedStatement pstmt = con.prepareStatement("select * from  CustomerDetails where cardnumber= ?");
         pstmt.setString(1,cardnum);
         ResultSet rs= pstmt.executeQuery();
          
         if(rs.next())
         {
                
            
               // conver amount of money your whant so send into interger
                  int AMOUNT =  Integer.parseInt(amount);
                //create variable session to get the data
                 
                   try
                   {
                       String searchquery = "select * from AccountBalance where cardnumber=?";
                       PreparedStatement pst = con.prepareStatement(searchquery);
                       pst.setString(1, (String)session.getAttribute("cardnumber"));
                       ResultSet present = pst.executeQuery();
                       present.next();
                   
                       
                       //now amount of data is available
                       String  balance = present.getString("balance");
                       int BALANCE     = Integer.parseInt(balance);
                       
                       dataselection send = new dataselection(BALANCE, AMOUNT);
         
                       out.println("Your balance"  +  send.getBalance());
                       out.println("Sending money" + send.getSending());
                        //compare he money you whant to send vs present money in your account
                        
                       if(send.getBalance() > send.getSending())
                         {
                         int bak = send.getBalance() - send.getSending();
                         String s3 = Integer.toString(bak);
                         
                         
                         //print remainder
                         
                         String smsender = "kiasi cha TZS  "+"  "+ amount +" " + " kimetumwa kwenye account no"+" "+ cardnum + " Salio lako jipya ni TSZ " + s3 + ",YESBANK ULIPO TUPO" ;
                         String msrecever = "Kias cha TZS " + send.getSending() + " kimewekwa kutoka kwenye account " + (String)session.getAttribute("cardnumber") + ",YESBANK ULIPO TUPO";
                    
                         updatemyaccount accountinfors = new updatemyaccount(bak,smsender,(String)session.getAttribute("cardnumber"),send.getSending(),msrecever,cardnum);
                         request.setAttribute("dataset",accountinfors);
                         
                         //select balance frome sender 
                         try 
                         {  
                             
                             
                           
                            String senderAccountBalance = "select * from AccountBalance where cardnumber=?";
                            PreparedStatement recerrpst = con.prepareStatement(senderAccountBalance);
                            recerrpst.setString(1,accountinfors.getCustomerReceiverCardnumber());
                            ResultSet receiverSECH = recerrpst.executeQuery();
                            receiverSECH .next();
                            
                            String  RECIVERbalance = receiverSECH.getString("balance");
                            int presentreciverbalance = Integer.parseInt(RECIVERbalance);
                            
                            //add the presend data to new data
                            int UpdatedREciverData = presentreciverbalance + send.getSending();
                            
                            //now update the receiverbalance from above data
                            
                            String NewbalanceforReceverAccount = "update AccountBalance set balance='"+UpdatedREciverData+"' where cardnumber=? ";
                            PreparedStatement newbalance       = con.prepareStatement(NewbalanceforReceverAccount);
                            newbalance.setString(1, accountinfors.getCustomerReceiverCardnumber());
                            newbalance.executeUpdate();
                            
                            //now insert bank statment to the receiverbank
                            String receiverStatmentnew  = "insert into  CustomerStatment(id,cardnumber,statment) values (NULL,?,?)";
	    	            PreparedStatement REceiverStatment = con.prepareStatement(receiverStatmentnew);
	      	            REceiverStatment.setString(1,accountinfors.getCustomerReceiverCardnumber());
	                    REceiverStatment.setString(2,accountinfors.getCustomerReceiverMessage());
	                    REceiverStatment.executeUpdate();
                            out.print("now we send message to receiver");
                            
                            //now update the sender column
                            
                            String NewbalanceforSenderAccount = "update AccountBalance set balance='"+bak+"' where cardnumber=? ";
                            PreparedStatement newSenderBalance      = con.prepareStatement(NewbalanceforSenderAccount);
                            newSenderBalance.setString(1, accountinfors.getCustomerSendercardnumber());
                            newSenderBalance.executeUpdate();
                            
                            
                            //sending message to the sender account 
                            String senderStatmentnew  = "insert into  CustomerStatment(id,cardnumber,statment) values (NULL,?,?)";
	    	            PreparedStatement SenderceiverStatment = con.prepareStatement(senderStatmentnew);
	      	            SenderceiverStatment.setString(1,accountinfors.getCustomerSendercardnumber());
	                    SenderceiverStatment.setString(2,accountinfors.getCustomerSenderMessage());
	                    SenderceiverStatment.executeUpdate();
                            
                            //NOW all is done redirect user to the dashboard with message
                             String updateinformation = "Transaction is now sucessifully complete";
                             request.setAttribute("updatemessage",updateinformation);
                             RequestDispatcher rds = request.getRequestDispatcher("dashboard.jsp");
                             rds.forward(request, response); 
                         }
                           catch(ServletException | IOException | NumberFormatException | SQLException e)
                         {
                              RequestDispatcher rds = request.getRequestDispatcher("error.jsp");
                              rds.forward(request, response);  
                         }
                         

                          }
                         else 
                           
                           { 
                            String message = "Please you havent enough money to sending";
                            request.setAttribute("msg",message);
                            RequestDispatcher ds = request.getRequestDispatcher("dashboard.jsp");
                            ds.forward(request, response);
                           }
                          }
                   
                         catch(Exception e)
                         {
                             RequestDispatcher rds = request.getRequestDispatcher("error.jsp");
                             rds.forward(request, response);  
                         }   
                        }
        
         
                       else 
                       {
                          String accountNOtAvailable = "please check account number creally";
                          request.setAttribute("notavailable",accountNOtAvailable);
                          RequestDispatcher ds = request.getRequestDispatcher("dashboard.jsp");
                          ds.forward(request, response);
                      }
                    }
     
     catch(Exception e)
     {
        RequestDispatcher rds = request.getRequestDispatcher("era.jsp");
        rds.forward(request, response);  
     }
     
    }

}
