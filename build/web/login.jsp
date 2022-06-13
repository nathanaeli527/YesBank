<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <%@ include file="header.jsp" %>  
     <div class="d-flex justify-content-center  align-items-center">
     <div class="form mt-5 p-2 shadow-none">
         <form method="post" action="User">
         <div class="mb-3">
             <label for="exampleInputEmail1" class="form-label text-center">PINCARD NUMBER</label>
             <input type="text" class="form-control shadow-none" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" placeholder="Cardnumber">
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">PASSWORD</label>
            <input type="password" class="form-control shadow-none" id="exampleInputPassword1" name="password" placeholder="Password">
           </div>
           <button type="submit" class="btn btn-primary mx-3">submit</button>
      </form>
     </div>  
    </div>
    
</div>
</body>
</html>