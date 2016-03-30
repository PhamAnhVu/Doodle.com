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


        <div id="content-home" >
            <div class="boder-outline" id="page-container" style="margin-top: 35px;" >
                <div id="page-header"><%@include file="header.jsp" %></div>
                <div id="content" style="min-height: 600px; padding: 15px; margin-top: 91px;">
                    <h2 style="margin-left: 50px">Đăng kí</h2>
                    <div id="signupbox" style="margin-top:60px; margin-left: 140px" class="mainbox col-md-8 col-md-offset-5 col-sm-10 col-sm-offset-4">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="panel-title">Đăng kí</div>
                                <div style="float:right; font-size: 85%; position: relative; top:-10px"></div>
                            </div>  
                            <div class="panel-body" >
                                <spring:form id="signupform" class="form-horizontal" role="form" method="post" commandName="user" action="singup">

                                    <div id="signupalert" style="display:none" class="alert alert-danger">
                                        <p>Error:</p>
                                        <span></span>
                                    </div>


                                    <div class="form-group">
                                        <label for="email" class="col-md-3 control-label">Email</label>
                                        <div class="col-md-9">
                                            <spring:input type="text" class="form-control" name="email" placeholder="Email Address" path="email"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="firstname" class="col-md-3 control-label">Tên hiển thị</label>
                                        <div class="col-md-9">
                                            <spring:input type="text" class="form-control" name="firstname" placeholder="First Name" path="username"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="col-md-3 control-label">Mật khẩu</label>
                                        <div class="col-md-9">
                                            <spring:input type="password" class="form-control" name="passwd" placeholder="Password" id="password1" path="password"/>
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
                                    <c:if test="${not empty message}">
                                        <div id="error" class="alert alert-danger">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            ${message}</div>
                                    </c:if>
                                    <div class="form-group">
                                        <!-- Button -->                                        
                                        <div class="col-md-offset-3 col-md-9">
                                            <input id="btn-signup" type="submit" class="btn btn-info" value="Đăng kí"/>
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
