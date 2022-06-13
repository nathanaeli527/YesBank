<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Banking | service</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<style>
     .dropdown
     {
       display:none;
     }
     
     #service:hover > .dropdown
     {
       display:block;
     }
     
     footer{
        background-image: url("./back.jpg");
     }
</style>
</head>
<body>
    <div class="container px-md-5 bg-white shadow-lg" id="Home">
     <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
     
       <a href="/" class="d-flex align-items-center text-decolation-none mb-md-3 mb-3 text-dark">
         <img src="./images.png" width="229" height="68" alt="welcome to our service">
       </a>
       
       <ul class="nav col-12 col-md-auto justify-content-center mb-2 mb-md-2">
         <li> <a href="#Home" class="nav-link  link-secondary">Home</a></li>
         <li> <a href="#service" class="nav-link  link-secondary">Service</a></li>
         <li> <a href="#contactus" class="nav-link  link-secondary">contact-us</a></li>
         <li> <a href="/ServletBankapplication/login.jsp" class="nav-link  link-secondary">Login</a></li>
       </ul>
     </header>
     
   
     <div class="row flex-lg-row-reverse align-items-center g-5 py-3 mb-4">
          <div class="col-12 col-lg-6">
            <img src="./service.jpg" width="607" height="510" class="d-block mx-lg-auto img-fluid">
          </div>
          
          <div class="col-12 col-lg-6">
            <h1 class="display-5 fw-bold mb-3">welcome</h1>
            <p class="lead">Yes bank imeweka wepesi kwa kila mteja wake kupata huduma za kibenki popote ulipo </p>
            
            <div class="d-grid gap-2 d-md-flex justify-content-md-start">
            </div>
          </div>
     </div>
     
     <div class="row flex-lg-row-reverse align-items-center g-5 py-3 mb-4">
     
           <div class="col-12 col-lg-6">
            <h1 class="display-5 fw-bold mb-3">Loans</h1>
            <p class="lead">Yes bank inatoa mikopo kwa kila mtu na kwa wakati wowote. Tembelea mawakala waliopo kalibu yako au tumia website yetu  kujipatia huduma bora za kibenki, Tunazingatia na kudhamini thamani yako.</p>
          </div>
          
            <div class="col-12 col-lg-6">
            <img src="./stay-at-home.png" width="607" height="510" class="d-block mx-lg-auto img-fluid">
          </div>
     </div>
        <div class="service mb-2 d-flex justify-content-md-start justify-content-center bg-dark shadow-lg pb-2" id="service">
            <div class="d-md-flex mb-md-2 justify-content-md-between px-2">
                <div class="card border-bottom mx-lg-auto mt-4" style="width: 20rem;">
                    <img src="./bil.jpg" width="width" height="height" alt="alt"/>
                    <div class="card-body">
                        Tuma na kulipa bila bila makato kuputia Benk yako pendwa Yesbank.Ulipo tupo
                        
                    </div>
                </div>
                
                <div class="card mx-3 mb-lg-2 mt-4" style="width: 20rem;">
                    <img src="./gif.gif" width="width" height="370px" alt="alt"/>
                    <div class="card-body">
                        Tuna toa mikopo kwa tozo ya bei ya chini pia tuna kuwezesha 
                    </div>
                </div>
                
                <div class="card mx-3 mt-4" style="width: 20rem;">
                    <img src="./bili.jpg" width="width" height="370px" alt="alt"/>
                    <div class="card-body">
                        Tuma pesa kokote uliko pila makato kupitia tovuti yetu ya Yesbank.com kwa mawasiliano zaidi
                        wasiliana nasi kupitia mawalaka wetu waliopo kalibu nawe.
                    </div>
                </div>
            </div>  
        </div>
        
        <div class="row flex-lg-row-reverse align-items-center g-5 py-3 mb-4" id="contactus">
           <div class="col-12 col-lg-6">
            <img src="./contact.png" width="607" height="510" class="d-xxl-block mx-lg-auto img-fluid">
          </div>
           <div class="col-12 col-lg-6">
               <h1>Contact us </h1>
            <ul class="list-group">
            <li class="list-group-item">+225467374</li>
           <li  class="list-group-item">Yesbank@gmail.com</li>
           <li class="list-group-item">P.o.box 1000</li>
</ul> 
          </div>
     </div> 
        
       
   </div>
    
     <footer class="px-md-5 bg-white shadow-lg justify-content-md-between container d-flex justify-content-md-between">
            <div class="ourservice mt-4">
                <p>Our service</p>
             
                <ul style="list-style:none;">
                        <li><span class="mx-3" style="color:green;"><i class="bi bi-bank2"></i></span>Foreign money exchange</li>
                        <li><span class="mx-3" style="color:green;"><i class="bi bi-briefcase-fill"></i></span>Loan</li>
                        <li><span class="mx-3" style="color:green;"><i class="bi bi-wallet2"></i></span>Transfermoney</li>
                </ul>
             
            </div>
            
             <div class="ourservice mt-4">
                <p>Other service</p>
                <ul  style="list-style:none;">
                    
                    <ul style="list-style:none;">
                    <li><span class="mx-3"  style="color:red;"><i class="bi bi-gear"></i></span>Cardbank repair</li>
                    <li><span class="mx-3"  style="color:red;"><i class="bi bi-cart-check"></i></span>shoping with yesbank</li>
                    <li><span class="mx-3"  style="color:red;"><i class="bi bi-hdd-network"></i></span>Farmer support loans</li>
            </div>
            
             <div class="ourservice mt-4">
                <p>contact us</p>
                <ul style="list-style:none;">
                    <li><span class="mx-3" style="color:green;"><i class="bi bi-envelope-open-fill"></i></span>Emai:yesbank@gmail.com</li>
                    <li><span class="mx-3" style="color:green;"><i class="bi bi-telephone-outbound"></i></span>+2257563</li>
                    <li><span class="mx-3" style="color:green;"><i class="bi bi-mailbox2"></i></span>Transfer</li>
                </ul>
            </div>
       </footer>  
  <script type="./jquery-3.1.1.min.js"></script>
</body>
</html>