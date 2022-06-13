  <%if(request.getAttribute("msg") != null ){%>  <div class="alert alert-danger"> <h5>YOur balance is not enough to transfer</h5></div> <%}%>
  <%if(request.getAttribute("notavailable") != null ){%><div class="alert alert-danger"> <h5>account number is invalid . try again</h5></div> <%}%>
  <%if(request.getAttribute("updatemessage") != null ){%><div class="alert alert-success"><h5>The transaction is successfully done </h5</div> <%}%>
  <%if(request.getAttribute("samecard") != null ){%><div class="alert alert-danger"><h5>You can't send money to the same account number.try again</h5</div> <%}%>
 