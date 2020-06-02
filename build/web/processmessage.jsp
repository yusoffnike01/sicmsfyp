<%-- 
    Document   : processmessage
    Created on : Oct 6, 2019, 10:38:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="fyp.message"%>
<%@page import="fyp.UserDao"%>
<%@page import="java.util.*,javax.mail.*"%>

<%@page import="javax.mail.internet.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String manager=request.getParameter("manager");
            String username=request.getParameter("name");
            String message1=request.getParameter("message");
             //Creating a result for getting status that messsage is delivered or not!

 String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");

    final String subject = request.getParameter("sub");

    final String messg = request.getParameter("mess");
    final String from = "ronaldoyusoff@gmail.com";

    final String pass = "mamiizzah1234";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

             
            message obj=new message();
            obj.setUsernamemanager(manager);
            obj.setUsername(username);
            obj.setMessage(message1);
               Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(message1);

        // Send message

        Transport.send(message);
 
System.out.println("succesfull");


    } catch (MessagingException mex) {

        mex.printStackTrace();


       System.out.println("lost connection");

    }

            int status = UserDao.savemessage( obj);
                if(status > 0) {
                   response.sendRedirect("notification.jsp");

  System.out.println("succesfful");
                    
                    
                }
                else{
                    response.sendRedirect("notification.jsp");
                    System.out.println(" fail");
                }
                

             
               
            %>
    </body>
</html>
