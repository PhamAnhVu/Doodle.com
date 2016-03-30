<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/images/d_icon.png" />" rel="shortcut icon" type="image/x-icon" /> 
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
                <div id="page-header"><%@include file="header.jsp" %></div>
                <div id="content" style="min-height: 800px; padding: 15px; margin-top: 91px;">
                    <h1>Huong dan</h1>
                    <a href="<c:url value="/create"/>">create poll</a>
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
