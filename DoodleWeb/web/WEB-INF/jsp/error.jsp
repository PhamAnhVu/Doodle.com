<%-- 
    Document   : error
    Created on : Mar 15, 2016, 11:20:20 PM
    Author     : vupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    String result;
    // Recipient's email ID needs to be mentioned.
    String to ="vupa1994@gmail.com";

    // Sender's email ID needs to be mentioned
    final String email =  "phamanhvu1994@gmail.com";
    final String password = "Mexanh@bkav";

    // Assuming you are sending email from localhost

    // Get system properties object
    Properties props = new Properties();

    // Setup mail server
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    // Get the default Session object.
    Session mailSession = Session.getInstance(props, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication () {
            return new PasswordAuthentication(email, password);
        }
});

    try {
        // Create a default MimeMessage object.
        Message message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setHeader("Content-type", "text/plain; charset=UTF-8");
        message.setFrom(new InternetAddress(email));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject("Yêu cầu thay đổi mật khẩu!");
        // Now set the actual message
        message.setText("Bạn đã yêu cầu thay đổi mật khẩu, vui lòng nhấn vào link dưới đây: <br> http://localhost:8080/doodle.com/user/login");
        // Send message
        Transport.send(message);
        result = "Sent message successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send message....";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        attribute: ${attribute}
    <center>
        <h1>Send Email using JSP</h1>
    </center>
    <p align="center">
        <%
            out.println("Result: " + result + "\n");
        %>
    </p>

</body>
</html>
