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

    <link href="<c:url value="/resources/images/d_icon.png" />" rel="shortcut icon" type="image/x-icon" />
    <style>
        .btn-file {
            position: relative;
            overflow: hidden;
        }
        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 100%;
            min-height: 100%;
            font-size: 100px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            outline: none;
            background: white;
            cursor: inherit;
            display: block;
        }
    </style>
    <body>

        <div id="content-home" >
            <div class="boder-outline" id="page-container" style="margin-top: 35px;" >
                <div id="page-header">

                    <%@include file="header.jsp" %>

                </div>
                <div id="content" style="min-height: 800px; padding: 15px; margin-top: 65px;">
                    <div class="row" style="padding: 0px;">
                        <div class="col-lg-9">
                            <h2>Manage Acount</h2>
                        </div>
                        <div style="clear: both; height: 30px;">
                            <hr style="background-color: black;">
                        </div>
                        <div class="col-lg-3" style="max-width: 23%">
                            <ul class="nav nav-pills nav-stacked" style="margin: auto; float: left; width: 100%">
                                <li class="active"><a data-toggle="tab" href="#menu1">Doodle account</a></li>
                                <li><a data-toggle="tab" href="#menu2">Profile settings</a></li>
                                <li><a data-toggle="tab" href="#menu3">MeetMe page</a></li>
                                <li><a data-toggle="tab" href="#menu4">Calendars</a></li>
                            </ul>

                        </div>
                        <div class="col-lg-9" style="float: left; min-width: 70%">
                            <div class="tab-content">
                                <div id="menu1" class="tab-pane fade in active">
                                    <h3>Doodle account</h3>
                                    <div>
                                        <p>Email, password, etc</p>
                                        <hr>
                                        <form class="form-horizontal" role="form" style="margin-top: 50px">
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="email">Email:</label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control" id="email" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Password:</label>
                                                <div class="col-sm-5">          
                                                    <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="n-pwd">New password:</label>
                                                <div class="col-sm-7">          
                                                    <input type="password" class="form-control" id="n-pwd" placeholder="Enter password">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="re-pwd">Re - password:</label>
                                                <div class="col-sm-7">          
                                                    <input type="password" class="form-control" id="re-pwd" placeholder="Enter password">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">        
                                                <div class="col-sm-offset-4 col-sm-10">
                                                    <button type="submit" class="btn btn-info">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div id="menu2" class="tab-pane fade">
                                    <h3>Profile settings</h3>
                                    <p>Name, language, adress, etc</p>
                                    <hr>
                                    <form class="form-horizontal" role="form" style="margin-top: 50px">
                                        <div class="form-group">
                                            <label class="control-label col-sm-3" for="avatar">Ảnh đại diện</label>
                                            <img src="<c:url value="/resources/images/doodle_small_2x.png" />"
                                                 alt="" height="80px" width="80px" style="margin-left: 20px; background-color: black"/>
                                            <div class="col-sm-3">
                                                <span class="btn btn-default btn-file">
                                                    Chọn file <input type="file">
                                                </span>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="control-label col-sm-3" for="username">Tên hiển thị</label>
                                            <div class="col-sm-9">          
                                                <input type="text" class="form-control" id="username">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="control-label col-sm-3" for="gender">Giới tính</label>
                                            <div class="col-sm-3">          

                                                <select name="gender" id="" class="form-control chosen" data-placeholder="[Tipo]" required>							            <option value=""></option>
                                                    <option value="1" >Nam </option>
                                                    <option value="2" >Nữ</option>
                                                    <option value="3" >Khác</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="control-label col-sm-3" for="region">Quốc gia</label>
                                            <div class="col-sm-4">          

                                                <select name="region" id="region" class="form-control chosen" data-placeholder="[Tipo]" required>							            <option value=""></option>
                                                    <option value="1" >Afghanistan </option>
                                                    <option value="2" >Albania</option>
                                                    <option value="3" >Algeria</option>
                                                    <option value="4" >Andorra</option>
                                                    <option value="5" >Angola </option>
                                                    <option value="6" >Amplificador</option>
                                                    <option value="7" >Armenia</option>
                                                    <option value="8" >Australia</option>
                                                    <option value="9" >Bahamas </option>
                                                    <option value="10" >Ukraine  </option>
                                                    <option value="11" >Vietnam </option>
                                                    <option value="12" >Zambia </option>
                                                    <option value="13" >Zimbabwe</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">        
                                            <div class="col-sm-offset-4 col-sm-10">
                                                <button type="submit" class="btn btn-info">Save</button>
                                            </div>
                                        </div>
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
