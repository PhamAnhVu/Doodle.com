<%-- 
    Document   : discription
    Created on : Mar 16, 2016, 12:36:07 AM
    Author     : vupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/images/d_icon.png" />" rel="shortcut icon" type="image/x-icon" />  
        <title>easy create poll</title>
        <!-- css and js file -->
        <link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <script src="<c:url value="/resources/js/jquery-1.12.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/multipleDatePicker.min.js" />"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/multiple-date-picker.css" />"/>

        <script>
            $(document).ready(function () {
                $("#btn-main").click(function () {
                    if ($("#main").is(":visible")) {
                        $("#main").hide();
                    } else {
                        $("#main").show();
                    }
                });
                $("#btn-core-next").click(function () {
                    $("#core").hide();
                    $("#calenda").show();
                });
                $("#btn-date-back").click(function () {
                    $("#core").show();
                    $("#calenda").hide();
                });
                $("#btn-date-next").click(function () {
                    $("#calenda").hide();
                    $("#time").show();
                });
                $("#btn-time-back").click(function () {
                    $("#calenda").show();
                    $("#time").hide();
                });
            });
        </script>
    </head>
    <body>
        <div id="core">
            Title <input/><br><br>
            Location <input/><br><br>
            Description: <textarea></textarea><br>
            <br>
            Name <input /><br><br>
            Email <input /><br><br>
            <button>Back</button>
            <button id="btn-core-next">Next</button><br><br>
        </div>

        <div id="calenda" style="display: none">
            calenda picker
       
                <multiple-date-picker/> dfgdfg
          
            <br><br>
            <button id="btn-date-back">Back</button>
            <button id="btn-date-next">Next</button><br><br>
        </div>

        <div id="time" style="display: none">
            time picker<br><br>
            <button id="btn-time-back">Back</button>
            <button id="btn-time-next">Next</button>           
        </div>

    </body>
</html>
