<%-- 
    Document   : login
    Created on : Mar 17, 2016, 10:25:09 PM
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
        <h1>Hello World!</h1>
        <spring:form method="post" commandName="user" action="login" autocomplete="off">
            Username <spring:input path="username" autocomplete="off"/>
            Password <spring:password path="password" autocomplete="off"/>
            <input type="submit" value="login">
        </spring:form>
    </body>
</html>
