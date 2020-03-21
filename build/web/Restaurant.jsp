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
    padding: 0 20px;
}
            
        </style>

    </head>
    <body>
      <div class="_3arMG">
              
              <header class="head">
             <a style="color: #7f8c8d;padding-left:6%;font-size: 200%;"class="navbar-brand" href="">HungerSaver</a>
        </header>
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
                        <a href="">Help & Support</a><br>
                        <a href="">Read FAQs</a><br>
                        
                    </div>
                    <div class="col-md-3 s2">
                        <h4>Legal</b></h4>
                        <a href="">Terms & Conditions</a><br>
                        <a href="">Refund & cancellation</a><br>
                        <!-- <a href="">Help & Support</a><br>-->
                        <a href="">Privacy Policy</a><br>
                        <a href="">Cookies Policy</a><br>
                    </div>
                    <div class="col-md-3 s2">
                     <h4>Follow On</h><br>
                            <a href=""><i class="fa fa-facebook-square"></i></a>
                            <a href=""><i class="fa fa-twitter-square"></i></a>
                            <a href=""><i class="fa fa-instagram"></i></a>
                            <a href=""><i class="fa fa-youtube-square"></i></a>

                    </div>
                </div>
            </div>
        <div style="background-color:#dfe6e9;color:#2d3436;"class="footer-copyright text-center py-3"><b> Delivering at your doorstep&nbsp&nbsp&nbsp&nbsp© 2020 Copyright:</b>
            <a href="">Manitian</a>
        </div>
    </footer>
   
    </body>
</html>
