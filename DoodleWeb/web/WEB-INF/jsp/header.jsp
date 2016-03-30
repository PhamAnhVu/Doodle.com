<%-- 
    Document   : header
    Created on : Mar 29, 2016, 8:29:12 AM
    Author     : vupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div id="navigation" class="row" 
              style=" height: 70px; padding: 20px; margin-left: 0px">

            <div style="margin-left: 10px;" class="col-md-3">
                <a href="<c:url value="/" />"><img src="<c:url value="/resources/images/doodle_small_2x.png" />" alt=""/></a>
            </div>

            <div style="">
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <a href="#" role="button" class="btn popovers" data-toggle="popover"
                   style="margin-right: 0px; text-align: right; float: right;"
                   data-content="<a href='<c:url value="/user/logout" />' title=''>Đăng xuất</a>
                <br><br><a href='<c:url value="/account" />' title=''>Quản lí tài khoản</a>"
                data-placement="bottom">Wellcome, ${sessionScope.username}</a>
                <a href="<c:url value="/dashboard"/>" class="col-lg-2" style="float: right; margin-top: 8px; text-align: right">Quản lí sự kiện</a>
                <a href="<c:url value="/create"/>" class="col-lg-3" style="float: right; text-align: right; margin-top: 8px;">Tạo sự kiện</a>
                <%  } else {
                %>
                <a href="<c:url value="/user/login" />" class="col-lg-2" style="margin-right: 0px; text-align: left; float: right;">Đăng nhập</a>
                <a href="<c:url value="/user/singup" />" class="col-lg-2" style="margin-right: 5px; text-align: right; float: right">Đăng kí</a>
                <%
                    }
                %>
            </div>

        </div>
        <hr style="background-color: black;">
         <script>
                    $(document).ready(function () {
                        $('[data-toggle="popover"]').popover();
                    });
                    $("[data-toggle=popover]")
                            .popover({html: true})
                </script>
    </body>
</html>
