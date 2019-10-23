<%-- 
    Document   : logout
    Created on : 10-Oct-2019, 13:51:28
    Author     : jtrobisch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% session.setAttribute("session","FALSE"); %>  
        <%
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        %>
    </head>
</html>
