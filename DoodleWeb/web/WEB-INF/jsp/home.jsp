<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.*" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>doodle.com</title>
        <style>

        </style>

        <!-- css and js file 
        -->
        <link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <script src="<c:url value="/resources/js/jquery-1.12.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">

        <div id="content-home" >
            <div class="boder-outline" id="page-container" style="margin-top: 35px;" >
                <div id="page-header">
                    <%@include file="header.jsp" %>
                </div>
                <div id="content" style="min-height: 800px; padding: 15px; margin-top: 65px;">

                    <h2></h2>
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Tạo mới sự kiên</button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Modal Header</h4>
                                </div>
                                <div class="modal-body">
                                    <p></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
