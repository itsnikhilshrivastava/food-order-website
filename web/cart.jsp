<%-- 
    Document   : cart
    Created on : Feb 18, 2018, 9:07:48 PM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hunger Saver</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            .head{
    box-shadow: 0 15px 40px -20px rgba(40,44,63,.15);
  
}
.sp{
    font-weight: 700;
    font-size: 20px;
    color: #3d4152;
}
.head .nav{
    position:absolute;
    top:30px;
    left:150px;
    font-weight:600;
    font-size: 14px;
}
html a {
  -webkit-font-smoothing: antialiased;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}
a {
  border: 0 none;
  outline: 0;
  text-decoration: none;
}
.price:before{
  content: 'Rs.';
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
  padding: 4px 20px;
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
        </style>
    </head>
    <body>
   
                     <%         MyConnection z=new MyConnection();
        Connection c2=z.getConnection();
    
        PreparedStatement pst2=c2.prepareStatement("select * from customer where email=?");
        pst2.setString(1, email);
     
        ResultSet rs2=pst2.executeQuery();
        if(rs2.next()){
        %>
              
              <header class="head">
                    <div class="h">
                        <a style="color: #7f8c8d;padding-left:6%;padding-top: 0.5%;font-size: 300%" class="navbar-brand" href="index.jsp"><b>H</b></a> 
                    </div>
                    <div class="nav">
                        <span class="sp">Cart</span>
                    <a style="color: #3d4152;padding-left:6%;padding-top: 0.5%;font-size: 20px;font-weight: 700;"class="navbar-brand" href="Restaurant.jsp">Restaurant</a>
                       <div class="dropdown">
                           <button class="dropbtn"><h5><b><%=rs2.getString("name")%></b></h5>
                           
                        </button>
                        <div class="dropdown-content">
                            <a href="signout.jsp">LogOut</a>
                        </div>
                       </div>
                    </div>
            
                      
        </header>
                            <%}%>
                
            
              <div class="_3arMG">
          
        <table border=1 align=center style="width:800px;border-radius:8px;">
            
        <%
        int msg=Integer.parseInt(request.getParameter("msg"));
        if(msg==0)
        {
        int qty=0;
        qty=Integer.parseInt(request.getParameter("qty"));
        String oid="0";
        String fid=null;
        String rid=null;
        fid=request.getParameter("fid");
        rid=request.getParameter("rid");
       
          MyConnection x=new MyConnection();
        Connection c=x.getConnection();
    
        PreparedStatement pst=c.prepareStatement("insert into orders(date,qty,fid,rid,email,oid) values(sysdate(),?,?,?,?,?)");
        pst.setInt(1, qty);
        pst.setString(2,fid);
        pst.setString(3,rid);
        pst.setString(4,email);
        pst.setString(5,oid);
        int r=pst.executeUpdate();
        }
         float t=0;
             MyConnection y=new MyConnection();
        Connection c1=y.getConnection();
            PreparedStatement pst1=c1.prepareStatement("select * from food,orders where food.fid=orders.fid and oid='0'"); 
            //pst+1.setString(1,custid);
            ResultSet rs=pst1.executeQuery();
            while(rs.next())
            {
            
          %>  
            <tr>
                <td style="font-weight:700"><%=rs.getString("fname")%>   </td>
                <td width="100" style="font-weight:700;text-align: center;" class="price"><%=rs.getInt("price")%>   </td>
              <td width="100" style="font-weight:700;text-align: center;"><%=rs.getInt("qty")%>   </td>
              <%
              t=t+(rs.getInt("price")* rs.getInt("qty"));
              %>
              <td width="100"><img src="<%=rs.getString("fimg")%>" width="244" height="160"></td>
              <% session.setAttribute("email",email); %>
              <td width="100" style="text-align: center;"><a href="delcart.jsp?fid=<%=rs.getString("fid")%>&rid=<%=rs.getString("rid")%>">Delete</a></td>
            </tr>
          <%  }
        
%>
<tr>
    <td colspan="5" style="font-weight:700">Total <%=t%></td>
    <td colspan="2"><a href="food.jsp?rid=<%=request.getParameter("rid")%>">Continue</a> 
            <a href="checkout.jsp?total=<%=t%>">Checkout</a>
        </td>
</tr>
        </table>
            <div style="background-color:#282c3f;color:#fff;"class="footer-copyright text-center py-3"><img src=""></img><b> Delivering at your doorstep&nbsp&nbsp&nbsp&nbsp© 2020 Copyright:</b>
            <a href="">Manitian</a>
        </div>
            </div>
         
    </body>
</html>
