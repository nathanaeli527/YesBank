<%
session.removeAttribute("emailsession");
session.removeAttribute("lname");
session.removeAttribute("adresssesiom");
session.removeAttribute("Fname");
session.removeAttribute("cardnumber");
session.invalidate();
response.sendRedirect("../login.jsp");
%>