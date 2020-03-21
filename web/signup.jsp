<%-- 
    Document   : signup
    Created on : 15 Jan, 2020, 10:36:12 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>signup</title>
         <link rel="stylesheet" href="online.css">
        <link ref="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="bootstrap.css">
        <script src="jquery.js"></script>
        <script src="popper.js"></script>
        <script src="bootstrap.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
         <nav class="navbar navbar-expand-sm navbar-light s2">
     <a Style="color:#7f8c8d;padding-left: 5%"class="navbar-brand" href="index.jsp"><b>HungerSaver</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul  style="color:#7f8c8d;"class="navbar-nav ml-auto">
            <li class="nav-item">
                <a style="color:#7f8c8d;"class="nav-link" href="signin.jsp"><b>Sign In</b></a>
            </li>
            <li class="nav-item">
                <a style="color:#7f8c8d;"class="nav-link" href="signup.jsp"><b>Create an account</b></a>
            </li>
          </ul>
        </div>
         </nav>
        <form action="RegisterServlet" method="POST" style="border:1px solid #ccc;background-image:url('foods.jpg'); ">
  <div class="container">
    <h1 style="color: #2d3436;">Sign Up</h1>
    
    <hr>
    <label  style="color: #2d3436;padding-left: 6.6%;"for="mob"><b>Mobile</b></label>
    <input  style="width: 60%;"type="text" placeholder="Mobile Number" name="mob" required><br>
    <label  style="color: #2d3436;padding-left: 7.7%;"for="name"><b>Name</b></label>
    <input style="width: 60%;" type="text" placeholder="Enter Name" name="name" required><br>
     <label  style="color: #2d3436;padding-left: 7.7%;"for="email"><b>Email</b></label>
    <input style="width: 60%;" type="text" placeholder="Enter Email" name="email" required><br>
    <label  style="color: #2d3436;padding-left: 5%;"for="psw"><b>Password</b></label>
    <input  style="width: 60%;"type="password" placeholder="Enter Password" name="pword" required><br>



    <label>
      <input  type="checkbox" checked="checked" name="remember" style="margin-bottom:15px;"> Remember me
    </label>

    <p style="color: #2d3436;">By creating an account you agree to our <a href="T and C.html" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
        <div style="width:72%;padding-left: 12%;"> <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
    </div>
    </div>
    </form>

      
         
         <footer class="full-footer">
            <div class="container top-footer">
                <div class="row s2">
                    <div class="col-md-3 s2">
                        <h4>The Company</h4>
                        <a href="about.html" target="_blank">About us</a><br>

                        <a href="">Blog</a><br>
                        <iframe style="width: 60%;height: 60%;"src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234700.85820778905!2d77.26580536426654!3d23.199347693033406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c428f8fd68fbd%3A0x2155716d572d4f8!2sBhopal%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1578633074905!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

                    </div>
                    <div class="col-md-3 s2">
                        
                        <h4>Contact</h4>
                        <a href="help.html" target="_blank">Help & Support</a><br>
                        <a href="">Read FAQs</a><br>
                        <h4>Follow On</h><br>
                            <a href=""><img class width="24" height="24" alt src="fb.png"></a>
                            <a href=""><img class width="24" height="24" alt src="insta.png"></a>
                            <a href=""><img class width="24" height="24" alt src="twitter.png"></a>
                            <a href=""><i class="fab fa-2x fa-youtube-square"></i></a>
                    </div>
                    <div class="col-md-3 s2">
                        <h4>Legal</b></h4>
                        <a href="T and C.html" target="_blank">Terms & Conditions</a><br>
                        <a href="C and R.html" target="_blank">Refund & cancellation</a><br>
                        <a href="privacy.html" target="_blank">Privacy Policy</a><br>
                        <a href="cookie.html" target="_blank">Cookies Policy</a><br>
                    </div>
                    <div class="col-md-3 s2">
                        <h4>For Restaurants</h4>
                        <a href="">Add Restaurants</a><br>
                        <a href="">Bussiness Blog</a><br>

                    </div>
                </div>
            </div>
        </div>
         </footer>
      <div class="container"style="color:#2d3436;width: 100%;">
                <div class="row">
                     <div class="col-md-5"><b>Delivering at your doorstep</b>
                         </div>
        <div class="col-md-6"class="footer-copyright text-center py-3"><b> ©2020 Copyright:</b>
            <a href="">SsoftTech.com</a>
            </div>
                     <div class="col-md-1">
                <a href="#" class="o-scroll-up static" title="back to top">
  <span class="o-scroll-up-text">^</span>
  <span class="o-scroll-up-icon" aria-hidden="true"></span>
</a>
                     </div>
            </div>
        </div>
    </body>
</html>
