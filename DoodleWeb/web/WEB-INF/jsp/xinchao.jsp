<%-- 
    Document   : xinchao
    Created on : Mar 15, 2016, 10:11:14 PM
    Author     : vupa
--%>

<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>xin chao ${sessionScope.username}</h1>
        <%
            if (session.getAttribute("username") != null) {
                String user = (String)session.getAttribute("username");
        %>
        <h1>
            co username: <%=user%>
        </h1>
        <%                }
        %>

        This is project name: ${project}
    </body>
</html>
