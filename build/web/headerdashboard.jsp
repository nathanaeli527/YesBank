 

    
     <%     
            
            if(session.getAttribute("cardnumber") == null){response.sendRedirect("login.jsp"); }%>
             <%           
                 try{
                       Class.forName("com.mysql.cj.jdbc.Driver");
		       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:/petson","root","");

                       String searchquery = "select * from AccountBalance where cardnumber=?";
                       PreparedStatement pst = con.prepareStatement(searchquery);
                       pst.setString(1, (String)session.getAttribute("cardnumber"));
                       ResultSet present = pst.executeQuery();
                       present.next();
                       
                       session.setAttribute("balancemoney",present.getString("balance"));
                       }
                       catch(Exception e)
                       {
                       
                       
                       }

      %>
    
    
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"><script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script><script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Pacifico&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
    </head>
    <body> 
    <style>
        
       
        
     .om{
            display: block;
            min-height: 300px;
          
        }
    .left 
    {
    min-height:430px;
    }
    
    
    
    .right 
    {
    min-height:430px;
    }
    
    .open:hover
    {
    letter-spacing:1px;
    opacity:.8;
    
    }
    
   
    
    .open 
    {
    
    border:none;
    background:white;
    }
    
  
    
    #statmentprint{
       
        min-height: 250px;
        background-color:white;
        border: 1px solid blue;
        
        display: none;
    }
    
    .messagee{
        border: 1px solid red;
    }
    
   
    
    #balance
    {
      margin-top:10px;
      display:none;
      margin-left:30px;
      border:1px solid silver;
      
    }
   
    #information{
        display:none;
        min-height: 250px;
    }
        
        
        
     .balanceContainer  button 
     {
     border:none;
     }
    </style>
</head>
<body>  
  
