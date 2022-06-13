<%@include file="headerdashboard.jsp"%>
<div class="container  px-md-5 shadow-lg bg-white pb-2 pt-5">
     <div class="d-flex justify-content-between">
          <div>
            <img src="./images.png" height="60px" width="100px"/>
          </div>
          <div><h5>${sessionScope.Fname} ${sessionScope.lname}</h5></div>
     </div>
</div>
 <section class="content container" >
       <div class="row mt-4 ">
            <div class="col-3 shadow left pt-5 ">
                 <div class="balance text-center">
                 <span> <img src="balancelogo.jpg" height="40px" width="40px"></span>
                   <button type="button" class="open">View balance</button>
                   
 
                   <div class=" bg-white shadow-lg mx-3 pt-1" id="balance">
                      <span>Amount</span>
                      
                      <p>${sessionScope.balancemoney}/=</p>
                      <div class="d-flex justify-content-around">
                       <button id="close" style="color:red; border:none;"><i class="bi bi-x-lg"></i></button>
                      </div>
                   </div>
                   
                 </div>
                 <hr>
                 <div class="statment text-center p-2">
                 <span> <img src="statment.jpg" height="40px" width="40px"></span>
                 <span><a href="#" class="text-decoration-none" id="clickstate">Bank statment</a></span>
                 </div>
                 <hr>
                 <div class="transfer text-center p-2">
                 <span> <img src="transfer.jpg" height="40px" width="40px"></span>
                 <span><a href="#"class="text-decoration-none" id="trans">Tranfer money</a></span>
                 </div>
                 <hr>
                  <div class="drawmoney text-center p-2">
                  <span> <img src="profile.jpg" height="40px" width="40px"></span>
                  <span><a href="#" class="text-decoration-none" id="home">Profile detail</a></span>
                  </div>
                 
                  <hr>
                  <div class="drawmoney text-center p-2">
                  <span> <img src="./logout.png" height="40px" width="40px"></span>
                  <span><a href="./dahboard/logout.jsp" class="btn" id="home">Logout</a></span>
                  </div>
            </div>
                      
           <div class="col mx-3 text-center shadow">
            <div class="text-center pt-2 text-uppercase">
               <span><h5>Welcome</h5></span>
               <h5>PATA HUDUMA ZA KIBENK KUPITIA TOVUTI HII</h5>
                <%if(request.getAttribute("msg") != null ){%>  <div class="alert alert-danger"> <h5>YOur balance is not enough to transfer</h5></div> <%}%>
                <%if(request.getAttribute("notavailable") != null ){%><div class="alert alert-danger"> <h5>account number is invalid . try again</h5></div> <%}%>
                <%if(request.getAttribute("updatemessage") != null ){%><div class="alert alert-success"><h5>The transaction is successfully done </h5</div> <%}%>
                <%if(request.getAttribute("samecard") != null ){%><div class="alert alert-danger"><h5>You can't send money to the same account number.try again</h5</div> <%}%>
            </div>
            <hr>
            
       <!----------------------------------------------statment from database-------------------------------------------->               
       <div class="container pt-5 scroller" id="statmentprint">
           
                    <%
                    String id = request.getParameter("userid");
                    String driver = "com.mysql.jdbc.Driver";
                    String connectionUrl = "jdbc:mysql://localhost:3306/";
                    String database = "petson";
                    String userid = "root";
                    String password = "";
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    }
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet = null;
                    %>
                   <%
                  try{
                      connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                      statement=connection.createStatement();
                     String sql ="select * from CustomerStatment where cardnumber='"+(String)session.getAttribute("cardnumber")+"' ORDER BY time DESC LIMIT 3";
                     resultSet = statement.executeQuery(sql);

                   while(resultSet.next()){
                     %>
            
                  <div class="shadow align-items-center mx-3 mb-2 messagee">
                   <span><%=resultSet.getString("time")%> </span>
                   <p>   <%=resultSet.getString("statment")%> </p>
                   </div>
                  </tr>
                 <%
                       }
                      connection.close();
                        } catch (Exception e) {
                       e.printStackTrace();
                       }
                       %>
       </div>            
<!-------------------------------------------end of satatment------------------------------------------------------->
                    <div class=" mt-4  om" >
                          <form action="transfer" method="post" class="form">
                              <input type="text" name="cardnumber" placeholder="Enter account number" class="form-control mt-4 mb-2 shadow-none">
                              <input type="text" name="money" placeholder="Enter amount of money" class="form-control shadow-none mb-2">
                              <input type="submit" class="btn btn-primary" value="send">
                          </form>  
                         
                    </div>



<!------------------------------exchange----------------------------------------------------------------->
<div id="information" >
  <ul class="list-group m-3">
  <li class="list-group-item text-left">FirstName: ${sessionScope.Fname} </li>
  <li class="list-group-item text-left">LastName : ${sessionScope.lname}</li>
  <li class="list-group-item text-left">Adress   : ${sessionScope.adresssesiom}</li>
  <li class="list-group-item text-left">Email    : ${sessionScope.emailsession}</li>
  
</ul>
</div>
                      
                  <div class="footer bg-dark text center mt-5 text-white">
                <span>© Copyright (c) 2022-2023</span>
               </div>
               </div>
<!----------------------------------end of bank content----------------------------------------------------------------------------------------->
 
       </div>
 </section>
 
<script>

$(document).ready(function(){
    
    $(".open").click(function(){
    $("#balance").css("display", "block");
    });
    
    $("#close").click(function(){
        $("#balance").css("display", "none");  
    });
    
 
    
     $("#clickstate").click(function(){
        $("#statmentprint").css("display", "block"); 
        $("#information").css("display", "none");
        $(".om").css("display", "none"); 
        
    });
    
     $("#trans").click(function(){
        $(".om").css("display", "block"); 
       $("#statmentprint").css("display", "none");
       $("#information").css("display", "none"); 
    });
    
     $("#home").click(function(){
        $("#information").css("display", "block"); 
        $("#statmentprint").css("display", "none");
        $(".om").css("display", "none"); 
    });
    
    
    
      
});
</script>
</body>
</html>