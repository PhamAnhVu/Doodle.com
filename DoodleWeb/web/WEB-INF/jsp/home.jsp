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

        <div id="content-home">
            <div id="page-header"></div>
            <div class="boder-outline" id="page-container">
                <div  id="navigation" class="row" style="margin-top: 20px; margin-left: 5px; width: 95%; min-width: 95%">

                    <div style="margin-left: 10px;" class="col-md-2">
                        <a href="<c:url value="/" />"><img src="<c:url value="/resources/images/doodle_small_2x.png" />" alt=""/></a>
                    </div>

                    <div style="">
                        <%
                            if (session.getAttribute("username") != null) {
                        %>
                        <a href="#" role="button" class="btn popovers" data-toggle="popover"
                           style="margin-right: 0px; text-align: right; float: right;"
                           data-content="<a href='<c:url value="/user/logout" />' title=''>Logout</a>
                           <br><br><a href='<c:url value="/create" />' title=''>Manager acount</a>"
                           data-placement="bottom">Wellcome, ${sessionScope.username}</a>
                        <%  } else {
                        %>
                        <a href="<c:url value="/user/login" />" class="col-lg-1" style="margin-right: 0px; text-align: right; float: right;">Login</a>
                        <a href="<c:url value="/user/singup" />" class="col-lg-1" style="margin-right: 5px; text-align: right; float: right">Singup</a>
                        <%
                            }
                        %>
                    </div>
                </div>
                <hr style="background-color: black;">
                <h1>Huong dan</h1>
                <a href="<c:url value="/create"/>">create poll</a>

                <script>
                    $(document).ready(function () {
                        $('[data-toggle="popover"]').popover();
                    });
                    $("[data-toggle=popover]")
                            .popover({html: true})
                </script>
            </div>
        </div>

    </body>
</html>
