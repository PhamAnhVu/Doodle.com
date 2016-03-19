<%-- 
    Document   : acount
    Created on : Mar 19, 2016, 2:58:26 PM
    Author     : vupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your account</title>

        <!-- css and js file 
        -->
        <link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <script src="<c:url value="/resources/js/jquery-1.12.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    </head>
    <body>
        <h1>Manage Account</h1>
        <div class="row">
            <div class="col-lg-3">
                <ul class="nav nav-pills nav-stacked col-lg-8" style="margin: auto; float: right">
                    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                    <li><a data-toggle="tab" href="#menu1">Doodle account</a></li>
                    <li><a data-toggle="tab" href="#menu2">Profile settings</a></li>
                    <li><a data-toggle="tab" href="#menu3">MeetMe page</a></li>
                    <li><a data-toggle="tab" href="#menu3">Calendars</a></li>
                </ul>

            </div>
            <div class="col-lg-9">
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <h3>HOME</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                    </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Menu 3</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
