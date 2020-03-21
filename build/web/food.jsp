<%-- 
    Document   : index
    Created on : Feb 7, 2018, 10:15:27 PM
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
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap.css">
        <link rel="stylesheet" href="bootstrap1.css">
        <style>
           



html,
html a {
  -webkit-font-smoothing: antialiased;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}

body {
  background-color: #fff;
  color: #666;
  font-family: 'Open Sans', sans-serif;
  font-size: 92.5%;
  margin: 0 auto;
}

a {
  border: 0 none;
  outline: 0;
  text-decoration: none;
}

strong {
  font-weight: bold;
}

p {
  margin: 0.75rem 0 0;
}

h1 {
  font-size: 0.75rem;
  font-weight: normal;
  margin: 0;
  padding: 0;
}

input,
button {
  border: 0 none;
  outline: 0 none;
}

button {
  background-color: #666;
  color: #fff;
}

button:hover,
button:focus {
  background-color: #555;
}


.basket-module,
.basket-labels,
.basket-product {
  width: 100%;
}

input,
button,
.basket,
.basket-module,
.basket-labels,
.item,
.price,
.quantity,
.basket-product,
.product-image
.product-details {
  float: left;
}

.price:before{
  content: 'Rs.';
}

.hide {
  display: none;
}

main {
  clear: both;
  font-size: 0.75rem;
  margin: 0 auto;
  overflow: hidden;
  padding: 1rem 0;
  width: 960px;
}

.basket{
  padding: 0 1rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket {
  width: 70%;
}

.basket-module {
  color: #282c3f;
}

label {
  display: block;
  margin-bottom: 0.3125rem;
}

.basket-labels {
  border-top: 1px solid #282c3f;
  border-bottom: 1px solid #282c3f;
  margin-top: 1.625rem;
  font-weight: bold;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

li {
  color: #282c3f;
  display: inline-block;
  padding: 0.625rem 0;
}

li.price:before{
  content: '';
}

.item {
  width: 55%;
}

.price,
.quantity{
  width: 15%;
}

.item-heading {
  padding-left: 4.375rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket-product {
  border-bottom: 1px solid #282c3f;
  padding: 1rem 0;
  position: relative;
}


.product-details {
  width: 65%;
}


.product-details {
  padding: 0 2.5rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.quantity-field {
  background-color: #282c3f;
  border: 1px solid #282c3f;
  border-radius: 4px;
  font-size: 0.8rem;
  padding: 2px;
  width: 3.75rem;
  color: #fff;
}
.cart-field {
  background-color: #282c3f;
  border: 1px solid #282c3f;
  border-radius: 4px;
  font-size: 0.8rem;
  padding: 2px;
  width: 6.75rem;
  color: #fff;
  font-weight: bold;
  
}

@media screen and (max-width: 640px) {
  .basket,
  .item{
    width: 100%;
  }
  .basket-labels {
    display: none;
  }
  .item {
    margin-bottom: 1rem;
  }
  .product-details {
    width: 60%;
  }
  .price{
    width: 33%;
  }
  .quantity {
    text-align: center;
    width: 34%;
  }
  .quantity-field {
    float: none;
  }
}

@media screen and (max-width: 960px) {
  main {
    width: 100%;
  }
  .product-details {
    padding: 0 1rem;
  }
}

        </style>
  	
	<title>Hunger Saver</title>
</head>
    <body>
         
         
        <div class="_3arMG"> 
            <header>
             <a style="color: #7f8c8d;padding-left:6%;font-size: 200%;"class="navbar-brand" href="index.jsp">HungerSaver</a>
        </header>
        <%  
         String rid=request.getParameter("rid");
        MyConnection x=new MyConnection();
        Connection c=x.getConnection();
        
        PreparedStatement pst=c.prepareStatement("select * from restaurant where rid=?");
        pst.setString(1,rid);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){%>
        <div class="_1637z">
            <div class="_8MlDE">
                <div class="_3TBoD">
                    <div class="_3mJdF">
                        <div class="H5I6J">
                            <img class="_2tuBw _3sCWI" width="254" height="165" alt src="<%=rs.getString("rimg")%>">
                        </div>
                    </div>
                    <div class="_2Fixt">
                        <div class="_1WDSQ">
                            <div class="U-jcg">
                                <div class="OEfxz">
                                    <h1 title="Hbt Bakery" class="_3aqeL"><%=rs.getString("rname")%></h1>
                                </div>
                            </div>
                            <div class="_1BpLF">
                                <div class="_3Plw0 JMACF"><%=rs.getString("rtag")%></div>
                                <div class="Gf2NS _2Y6HW"><%=rs.getString("radd")%></div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <%  }  %>
          <div class="basket">
      <div class="basket-labels">
        <ul>
          <li class="item item-heading">Item</li>
          <li class="price">Price</li>
          <li class="quantity">Quantity</li>
          
        </ul>
      </div>
           <%
               int i=1;
        MyConnection y=new MyConnection();
        Connection d=y.getConnection();
        
        PreparedStatement pst1=d.prepareStatement("select * from food where rid=?");
        pst1.setString(1,rid);
        ResultSet rs1=pst1.executeQuery();
         
        while(rs1.next()){    %>
          
                        
                          
                                    <form action="cart.jsp">    
                                        <% session.setAttribute("email",email); %>
                            <div class="basket-product">
        <div class="item">
             <div class="product-details">
              <h1 name="fname" style="font-size:150%;color:#282c3f;font-weight: bold;"><%=rs1.getString("fname")%></h1>
          </div>
          <div class="product-image">
              <img src="<%=rs1.getString("fimg")%>" alt="Placholder Image 2" class="product-frame" height="160" width="244">
          </div>
         
        </div>
              <div class="price" style="color:#282c3f;font-weight: bold;"><%=rs1.getInt("price")%></div>
        <div class="quantity">
            <input type="number" value="0" min="0" class="quantity-field" name="qty">
        </div>
       
        
        <input type="hidden" value="<%=rs1.getString("fid")%>" name="fid">
        <input type="submit" value="ADD TO CART" class="cart-field">
        <input type="hidden" value="<%=rs1.getString("rid")%>" name="rid">
        <input type="hidden" value="<%=0%>" name="msg">
      </div>
                                    </form>                            
                                   
                         
           
                              <%  }
        
        
        
        
                              %>
                            
       
</div>
                
  <div class="_5ZwHn" style="margin-left:1000px;position:fixed;margin-top:90px; ">
            <div class="_13V5d">
                <div class="">
                    <img src="images\cart.png" width="100%">
                    <div class="_1Qxa0">Good food is always cooking! Go ahead, order some yummy items from the menu.</div>
                </div>
            </div>
    </div>
        <div style="background-color:#282c3f;color:#fff;"class="footer-copyright text-center py-3"><img src=""></img><b> Delivering at your doorstep&nbsp&nbsp&nbsp&nbsp© 2020 Copyright:</b>
            <a href="">Manitian</a>
        </div>
        </div>
    </body>
</html>