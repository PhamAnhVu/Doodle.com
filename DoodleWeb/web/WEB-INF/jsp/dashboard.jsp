<%-- 
    Document   : dashboard
    Created on : Mar 19, 2016, 1:43:42 PM
    Author     : vupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dashboard</title>
        <!-- css and js file 
        -->
        <link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <script src="<c:url value="/resources/js/jquery-1.12.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    </head>
    <body>

        <div id="content-home" >
            <div class="boder-outline" id="page-container" style="margin-top: 35px;" >
                <div id="page-header">
                    <%@include file="header.jsp" %>
                </div>
                <div id="content" style="min-height: 800px; padding: 15px; margin-top: 65px;">

                    <h1>Doodle dashboard </h1>

                    <div class="bs-example">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#sectionA">Polls</a></li>
                            <li><a data-toggle="tab" href="#sectionB">MeetMe requests</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="sectionA" class="tab-pane fade in active">
                                <h3>Polls</h3>
                                <p>List of polls</p>
                            </div>
                            <div id="sectionB" class="tab-pane fade">
                                <h3>MeetMe</h3>
                                <p>Partners, colleagues and friends want to meet you. Show 
                                    them when you are available and how you want to be contacted.
                                    MeetMe is your central contact point to coordinate your meetings.
                                </p>
                            </div>
                            <div id="dropdown1" class="tab-pane fade">
                                <h3>Dropdown 1</h3>
                                <p>WInteger convallis, nulla in sollicitudin placerat, ligula enim auctor lectus, in mollis diam dolor at lorem. Sed bibendum nibh sit amet dictum feugiat. Vivamus arcu sem, cursus a feugiat ut, iaculis at erat. Donec vehicula at ligula vitae venenatis. Sed nunc nulla, vehicula non porttitor in, pharetra et dolor. Fusce nec velit velit. Pellentesque consectetur eros.</p>
                            </div>
                            <div id="dropdown2" class="tab-pane fade">
                                <h3>Dropdown 2</h3>
                                <p>Donec vel placerat quam, ut euismod risus. Sed a mi suscipit, elementum sem a, hendrerit velit. Donec at erat magna. Sed dignissim orci nec eleifend egestas. Donec eget mi consequat massa vestibulum laoreet. Mauris et ultrices nulla, malesuada volutpat ante. Fusce ut orci lorem. Donec molestie libero in tempus imperdiet. Cum sociis natoque penatibus et magnis.</p>
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
</body>
</html>
