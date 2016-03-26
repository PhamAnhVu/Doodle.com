<%-- 
    Document   : singup
    Created on : Mar 18, 2016, 10:43:25 AM
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
        <script src="<c:url value="/resources/js/login.js" />"></script>

        <script>

        </script>
    </head>
    <body>
        <div class="container" style="margin: auto">
            <h1 id="asdasd">Singup</h1>
            <spring:form method="post" commandName="user" action="singup">
                username <spring:input path="username" autocomplete="off"/><br>
                password <spring:password path="password" autocomplete="off"/><br>
                <input type="submit" value="Singup"/>
            </spring:form>
        </div>
        <div id="signupbox" style="margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Đăng kí</div>
                    <div style="float:right; font-size: 85%; position: relative; top:-10px"></div>
                </div>  
                <div class="panel-body" >
                    <form id="signupform" class="form-horizontal" role="form">

                        <div id="signupalert" style="display:none" class="alert alert-danger">
                            <p>Error:</p>
                            <span></span>
                        </div>


                        <div class="form-group">
                            <label for="email" class="col-md-3 control-label">Email</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email" placeholder="Email Address">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="firstname" class="col-md-3 control-label">Tên hiển thị</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="firstname" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-md-3 control-label">Mật khẩu</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="passwd" placeholder="Password" id="password1">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="icode" class="col-md-3 control-label">Nhập lại mật khẩu</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="icode" placeholder="" id="password-re">
                            </div>

                        </div>
                        <div class=""  id="repass-alert">
                        </div>
                        <div class="form-group">
                            <!-- Button -->                                        
                            <div class="col-md-offset-3 col-md-9">
                                <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
