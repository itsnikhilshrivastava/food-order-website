<%-- 
    Document   : check
    Created on : Feb 2, 2018, 3:10:52 AM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hunger Saver</title>
    </head>
    <body>
        <%
        MyConnection x=new MyConnection();
        Connection c=x.getConnection();
        String fid=request.getParameter("fid");
        String rid=request.getParameter("rid");
        PreparedStatement pst=c.prepareStatement("delete from orders where fid=?");
        pst.setString(1,fid);
        
        int y=pst.executeUpdate();
   
          if(y>0){
            
           
        response.sendRedirect("cart.jsp?msg=1&rid="+rid);
        }
        else
        {
        response.sendRedirect("cart.jsp?msg=Category Not Deleted");
        }
        
        %>
    </body>
</html>
