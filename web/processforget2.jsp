<%-- 
    Document   : processforget2
    Created on : Aug 11, 2019, 4:38:28 PM
    Author     : user
--%>

<%@page import="fyp.manager"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="java.util.*,javax.mail.*"%>

<%@page import="javax.mail.internet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String submit=request.getParameter("Submit");
            
            if(submit.equalsIgnoreCase("Reset Password")){
                
                String email=request.getParameter("email");
               String password=request.getParameter("pass");
                String subject=request.getParameter("Reset Password");
               manager obj=new manager();
               obj.setEmail(email);
               obj.setPassword(password);
               int status=UserDao.getupdate(obj);
               User a=new User();
                   a.setEmail(email);
                   
               a.setPasword(password);
               int status2=UserDao.getupdatepassword(a);
               if(status>0)
               {
                  final String from = "ronaldoyusoff@gmail.com";

    final String pass = "mamiizzah1234";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

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

                new InternetAddress(email));

        // Set Subject: header field

        message.setSubject("Reset Password");

        // Now set the actual message

        message.setText("Your new Password "+password);

        // Send message

        Transport.send(message);

       response.sendRedirect("index.jsp");
       System.out.println("succesfull");

    } catch (MessagingException mex) {

        mex.printStackTrace();

       response.sendRedirect("index.jsp");
       System.out.println("lost connection");

    }
               }
               else if(status2>0)
               {
                   final String from = "ronaldoyusoff@gmail.com";

    final String pass = "mamiizzah1234";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

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

                new InternetAddress(email));

        // Set Subject: header field

        message.setSubject("Reset Password");

        // Now set the actual message

        message.setText("Your new Password "+password);

        // Send message

        Transport.send(message);

       response.sendRedirect("index.jsp");
       System.out.println("succesfull");

    } catch (MessagingException mex) {

        mex.printStackTrace();

       response.sendRedirect("index.jsp");
       System.out.println("lost connection");

    }
     
                   
               }
               
            }

                
              
            %>
    </body>
</html>
