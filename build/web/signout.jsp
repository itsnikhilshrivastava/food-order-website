<%-- 
    Document   : signout
    Created on : 18 Feb, 2020, 7:43:08 PM
    Author     : NIKHIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Progma", "no-cache");
    response.setDateHeader("Express",0);
%>
<%
    session = request.getSession();
    String email="";
    if(session.getAttribute("session_user")==null || session.getAttribute("session_user")=="" || session.getAttribute("session_user").equals(" ")){
        response.sendRedirect("login.jsp");
    }
    else{
        email = session.getAttribute("session_user").toString();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Signout Page</h1>
        <%
            if(session.getAttribute("session_user")!=null){
                session.removeAttribute("session_user");
                request.getSession(false);
                session.setAttribute("session_user", null);
                session.invalidate();
                response.sendRedirect("signin.jsp");
            }
        %>
    </body>
</html>
