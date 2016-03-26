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
        <div class="container">
            <div class="row">
                <div class="col-lg-9"><h1>Manager acount</h1></div>
            </div>
        </div>
        <div class="row" style="margin-top: 50px;">
            
            <div class="col-lg-3">
                <ul class="nav nav-pills nav-stacked col-lg-8" style="margin: auto; float: right">
                    <li class="active"><a data-toggle="tab" href="#menu1">Doodle account</a></li>
                    <li><a data-toggle="tab" href="#menu2">Profile settings</a></li>
                    <li><a data-toggle="tab" href="#menu3">MeetMe page</a></li>
                    <li><a data-toggle="tab" href="#menu4">Calendars</a></li>
                </ul>

            </div>
            <div class="col-lg-9">
                <div class="tab-content">
                    <div id="menu1" class="tab-pane fade in active">
                        <h3>Doodle account</h3>
                        <div>
                            <p>Email, password, etc</p>
                            <hr>
                            <form>
                                <h3>Email</h3> <input type="text" name="email"><br>
                                <h3>Current password</h3> <input type="text" name="oldpass"><br>
                                <h3>New password</h3> <input type="text" name="newpass"><br>
                                <h3>Re-enter password</h3> <input type="text" name="renewpass"><br>
                                <input type="submit" value="save">
                            </form>
                        </div>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Profile settings</h3>
                        <p>Name, language, adress, etc</p>
                        <hr>
                        <form>
                            avatar <img src="<c:url value="/resources/images/doodle_small_2x.png" />" alt="" height="80px" width="80px" style="margin-left: 20px"/> <input type="file">
                            Name <input type="text"> <br>
                            Year of birth <input type="text"> <br>
                            <input type="submit" value="save">
                            
                        </form>
                    </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>MeetMe page</h3>
                        <p>Your personal profile for scheduling 1:1 meetings</p>
                        <hr>
                        <p>Partners, colleagues and friends want to meet you.
                            Show them when you are available and how you want to be contacted.
                            MeetMe is your central contact point to coordinate your meetings.</p>
                    </div>
                    <div id="menu4" class="tab-pane fade">
                        <h3>Calendars</h3>
                        <p>You can connect different calendar services in order
                            to make use of your calendars when creating a poll or
                            when participating in one.</p>
                        <hr>
                        <p>do some thing</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
