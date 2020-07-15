<%-- 
    Document   : newjsp
    Created on : May 30, 2020, 2:30:19 PM
    Author     : suchit chawda
--%>

<%
    session = request.getSession();
    String email="";
    if(session.getAttribute("session_user")==null || session.getAttribute("session_user")=="" || session.getAttribute("session_user").equals(" ")){
        response.sendRedirect("signin.jsp");
    }
    else{
        email = session.getAttribute("session_user").toString();
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
 <%@page import="java.util.*" %>  
 <%
 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
        String total = request.getParameter("total");
 %>
<!DOCTYPE html>
<html>
    
    <head>
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
  color: #7f8c8d;
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

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
        <%@include file="common_css.jsp"%>
    </head>
    <body>
        <%         MyConnection z=new MyConnection();
        Connection c2=z.getConnection();
    
        PreparedStatement pst2=c2.prepareStatement("select * from customer where email=?");
        pst2.setString(1, email);
     
        ResultSet rs2=pst2.executeQuery();
        if(rs2.next()){
        %>
        <nav class="navbar navbar-expand-sm navbar-light s2 ">
     <a style="color: #7f8c8d;padding-left:6%;padding-top: 0%;font-size: 20px;font-weight: 700;" class="navbar-brand" href="index.jsp"><b>HungerSaver</b></a>
     <a style="color: #7f8c8d;padding-left:3%;padding-top: 0%;font-size: 20px;font-weight: 700;"class="navbar-brand" href="Restaurant.jsp">Restaurant</a>  
     <div class="dropdown">
    <button class="dropbtn"><h5><b><%=rs2.getString("name")%></b></h5>
      
    </button>
    <div class="dropdown-content">
      <a href="signout.jsp">LogOut</a>
    </div>
  </div> 

        
      
    </nav>
        <div style="background-color: #b8e994;padding: 5%;" class="container-fluid">  
            <div class="container" > 
         <div class="row">
             <div class="col-sm-8"><div class="card">
       <!--form details -->
      <div class="card-body">     
          <h3 style="text-align: center;">Your Detail</h3>
          <form method="post" action="msgservlet">
              <div class="form-group">
                  <label>Order id</label>
                  <input id="ORDER_ID" name="ORDER_ID" value="ORDS_<%= randomInt %>">
              </div>
              <div class="form-group">
                  <label>Total Ammount</label>
                  <input  title="TXN_AMOUNT" type="text" name="TXN_AMOUNT" value="<%= total %>">
              </div>
              
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="CUST_ID" aria-describedby="emailHelp" placeholder="Enter email" name="CUST_ID" value="<%=rs2.getString("email")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInput">Your Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Name" value="<%=rs2.getString("name")%>">
  </div>
      <div class="form-group">
    <label for="exampleInput">Your Number</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Number" value="<%=rs2.getString("mob")%>">
  </div>
  <% }%>
   <div class="form-group">
    <label for="exampleFormControlTextarea1">Your address</label>
    <textarea placeholder="Enter your address" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
                     
       <div class="container text-center">       
         
           <button type="submit" class="btn btn-outline-success" >Place Order</button>
       </div>

          </form>
      </div>
  </div>

</div>

</div>

            </div>
        </div>
           <%@include file="footer1.jsp" %>
     
       
    </body>
</html>
