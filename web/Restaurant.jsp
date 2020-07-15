<%--
    Document   : index
    Created on : Feb 7, 2018, 10:15:27 PM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<%  String email="";
    try{
    session = request.getSession();
   
    if(session.getAttribute("session_user")==null || session.getAttribute("session_user")=="" || session.getAttribute("session_user").equals(" ")){
        response.sendRedirect("signin.jsp");
    }
    else{
        email = session.getAttribute("session_user").toString();
    }}
    catch(Exception e){
            System.out.println(e);
            }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hunger Saver</title>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="online.css">
        <link rel="stylesheet" href="bootstrap.css">
        <style>
           
                  .head{
    box-shadow: 0 15px 40px -20px rgba(40,44,63,.15);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 80px;
    background: #fff;
    z-index: 1000;
    transform: translateZ(0);
    transition: transform .3s ease;
    
}
.h{
    padding: 0 20px;
}
.dropdown {
  float: right;
  top: 0;
  
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: #3d4152;
  padding: 0 40px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: center;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}
.head .nav{
    position:absolute;
    top:20px;
    left:270px;
    font-weight:600;
    font-size: 14px;
}
        </style>

    </head>
    <body>
      <div class="_3arMG">
        <%         MyConnection y=new MyConnection();
        Connection c1=y.getConnection();
    
        PreparedStatement pst1=c1.prepareStatement("select * from customer where email=?");
        pst1.setString(1, email);
     
        ResultSet rs1=pst1.executeQuery();
        if(rs1.next()){
        %>
              
              <header class="head">
                    <div class="h">
                        <a style="color: #7f8c8d;padding-left:6%;font-size: 200%;"class="navbar-brand" href="index.jsp">HungerSaver</a>
                    </div>
                  <div class="nav">
                    <div class="dropdown">
                        <button class="dropbtn"><h5><b><%=rs1.getString("name")%></b></h5>
                            
                        </button>
                        <div class="dropdown-content">
                            <a href="signout.jsp">LogOut</a>
                        </div>
                    </div>
                  </div>
        </header>
                            <%}%>
      <table  align="center" style="width:1200px;margin-top:100px;">
          
             <tr>
           <%
               int i=0;
        MyConnection x=new MyConnection();
        Connection c=x.getConnection();
    
        PreparedStatement pst=c.prepareStatement("select * from restaurant");
     
        ResultSet rs=pst.executeQuery();
        while(rs.next()){   i++; %>
         
        <td>
                       <div class="container">
  <div class="row">
    <div class="card-deck">
     <div class="card">
         <a href=""><img style="padding:2%;"class="card-img-top" src="<%=rs.getString("rimg")%>" alt="Card image cap">
         </a>   <div class="card-body">
       <h5><b><%=rs.getString("rname")%></b></h5>
       <p class="card-text"><%=rs.getString("rtag")%></p>
    <p class="card-text"><%=rs.getString("radd")%></p>
    <div style="padding-bottom: 10%;">
    <span Style="color: orange;"class="fa fa-star"></span>
<span  Style="color: orange;"class="fa fa-star "></span>
<span  Style="color: orange;"class="fa fa-star "></span>
<span  Style="color: orange;"class="fa fa-star"></span>
<span class="fa fa-star"></span>
    </div>
    <div style="padding-right: 8%;">
         <% session.setAttribute("email",email); %>
        <a href="food.jsp?rid=<%=rs.getString("rid")%>"class="btn btn-success">Order Now</a>
  </div>
         </div>
      </div>
    </div>
  </div>
                       </div>
                    </td>
                <%  if(i%4==0)
          {
          out.println("</tr><tr>");
          }            }
        
        
        
        
%>  </tr>  </table>
      </div>
           <footer class="full-footer">
            <div class="container top-footer">
                <div class="row s2">
                    <div class="col-md-3 s3">
                        <h4>The Company</h4>
                        <a href="">About us</a><br>

                        <a href="">Blog</a><br>
                        <iframe style="width: 60%;height: 60%;"src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234700.85820778905!2d77.26580536426654!3d23.199347693033406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c428f8fd68fbd%3A0x2155716d572d4f8!2sBhopal%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1578633074905!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

                    </div>
                    <div class="col-md-3 s2 s3">
                        <h4>Contact</h4>
                        <a href="help.html">Help & Support</a><br>
                        <a href="">Read FAQs</a><br>
                        
                    </div>
                    <div class="col-md-3 s2">
                        <h4>Legal</b></h4>
                        <a href="T and C.html">Terms & Conditions</a><br>
                        <a href="C and R.html">Refund & cancellation</a><br>
                        <!-- <a href="">Help & Support</a><br>-->
                        <a href="privacy.html">Privacy Policy</a><br>
                        <a href="cookie.html">Cookies Policy</a><br>
                    </div>
                    <div class="col-md-3 s2">
                         <h4>Follow On</h4>
                            <a href=""><i style="padding-right:  12px;"class="fa fa-facebook-square"></i></a>
                            <a href=""><i  style="padding-right :12px;"class=" fa fa-twitter-square"></i></a>
                            <a href=""><i  style="padding-right :12px;"class=" fa fa-instagram"></i></a>
                            <a href=""><i  style="padding-right:12px;"class="fa fa-youtube-square"></i></a>
                             
                    </div>
                </div>
            </div>
        <div style="background-color:#dfe6e9;color:#2d3436;"class="footer-copyright text-center py-3"><b> Delivering at your doorstep&nbsp&nbsp&nbsp&nbsp© 2020 Copyright:</b>
            <a href="">Manitian</a>
        </div>
    </footer>
   
    </body>
</html>
