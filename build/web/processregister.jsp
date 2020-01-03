<%-- 
    Document   : processregister
    Created on : Oct 25, 2019, 5:11:44 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String usernamemanager = request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            Part part = request.getPart("image");

            User e = new User();

            e.setUsername(username);
            e.setPasword(password);
            e.setUsernamemanager(usernamemanager);
            e.setName(name);
            e.setAge(age);
            e.setAddress(address);
            e.setCity(city);
            e.setState(state);
            e.setPart(part);

            int status = UserDao.save(e);
            
            if (status > 0) {
                
                response.sendRedirect("register.jsp");
            } else {
                response.sendRedirect("register.jsp");
                System.out.println("cannot insert");
            }

        %>
    </body>
</html>
