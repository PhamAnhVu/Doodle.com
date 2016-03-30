<%-- 
    Document   : login
    Created on : Mar 17, 2016, 10:25:09 PM
    Author     : vupham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- css and js file 
        -->
        <link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <script src="<c:url value="/resources/js/jquery-1.12.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

        <style>
            html, body {
                height: 100%
            }
        </style>
    </head>
    <body>

        <div id="content-home" >
            <div class="boder-outline" id="page-container" style="margin-top: 35px;" >
                <div id="page-header"><%@include file="header.jsp" %></div>
                <div id="content" style="min-height: 550px; padding: 15px; margin-top: 91px;">
                    <h2 style="margin-left: 50px">Đăng nhập</h2>
                    <div id="loginbox" style="margin-top:60px; margin-left: 140px;" class="mainbox col-md-8 col-md-offset-5 col-sm-10 col-sm-offset-4">                    
                        <div class="panel panel-info" >
                            <div class="panel-heading">
                                <div class="panel-title">Đăng nhập</div>
                                <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="<c:url value="/help/reset-password" />">Quên mật khẩu?</a></div>
                            </div>     

                            <div style="padding-top:30px" class="panel-body" >

                                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                                <spring:form id="loginform" class="form-horizontal" role="form" method="post" commandName="user" action="login">

                                    <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <spring:input id="login-username" path="email" type="text" class="form-control" name="username" value="" placeholder="email"/>                                        
                                    </div>

                                    <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <spring:input id="login-password" path="password" type="password" class="form-control" name="password" placeholder="password"/>
                                    </div>
                                    <c:if test="${not empty message}">
                                        <p class="alert alert-danger">${message}</p>
                                    </c:if>
                                    <div style="margin-top:10px" class="form-group">
                                        <!-- Button -->

                                        <div class="col-sm-12 controls">
                                            <input type="submit" value="Đăng nhập" class="btn btn-success">

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-12 control">
                                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                                Chưa có tài khoản! 
                                                <a href="<c:url value="/user/singup" />" >
                                                    Đăng kí ngay
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </spring:form>     

                            </div>                     
                        </div>  
                    </div>
                </div>
                <div id="footer">
                    <hr style="background-color: #06d; height: 4px;">
                    <%@include file="footer.jsp" %>    
                </div>
            </div>
            <div style="height: 30px;"></div>
        </div>

    </body>
</html>
