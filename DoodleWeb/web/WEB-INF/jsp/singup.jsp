<%-- 
    Document   : singup
    Created on : Mar 18, 2016, 10:43:25 AM
    Author     : vupham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Singup</h1>
        <spring:form method="post" commandName="user" action="singup">
            username <spring:input path="username" autocomplete="off"/><br>
            password <spring:password path="password" autocomplete="off"/><br>
            <input type="submit" value="Singup"/>
        </spring:form>
    </body>
</html>
