<%-- 
    Document   : update
    Created on : Dec 16, 2019, 3:22:45 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
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
            String password=request.getParameter("password");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            
          int age=Integer.parseInt(request.getParameter("age"));
            String address = request.getParameter("address");
               String city = request.getParameter("city");
                  String state = request.getParameter("state");
                  Part part=request.getPart("image");
           
                
           User e = new User();
                      e.setUsername(username);
                      e.setPasword(password);
                      e.setUsernamemanager(usernamemanager);
                      e.setName(name);
                      e.setEmail(email);
                      e.setNumber(number);
          
                      e.setAge(age);
                      e.setAddress(address);
                      e.setCity(city);
                      e.setState(state);
                      e.setPart(part);
                      
    int status=UserDao.updateUser(e);
    
 if(status > 0) {
                    System.out.println("Successful insert user");
                    
                    response.sendRedirect("register.jsp");
                }else{
     System.out.println("fail");
        response.sendRedirect("register.jsp");
     
 }
               
            %>
    </body>
</html>
