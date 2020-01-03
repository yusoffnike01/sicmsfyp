<%-- 
    Document   : updateprofile2.jsp
    Created on : Jul 14, 2019, 10:29:57 AM
    Author     : user
--%>

<%@page import="fyp.manager"%>
<%@page import="fyp.User"%>
<%@page import="fyp.UserDao"%>
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
      
      
     
      String submit=request.getParameter("submit");
              
      if(submit.equalsIgnoreCase("Edit"))
              {
                  String username = request.getParameter("username");
            String password=request.getParameter("password");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            int age = Integer.parseInt(request.getParameter("age"));
         
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
                    System.out.println("Successful");
                    
                    response.sendRedirect("register.jsp");
                }
                                        else
                                        {
                                            response.sendRedirect("register.jsp");
                                             System.out.println("failed");

                                        }
              }
      
      else if(submit.equalsIgnoreCase("EditProfiler"))
      {
          String username = request.getParameter("username");
            String password=request.getParameter("password");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            int age = Integer.parseInt(request.getParameter("age"));
         
            String address = request.getParameter("address");
               String city = request.getParameter("city");
                  String state = request.getParameter("state");
                  Part part=request.getPart("image");
           
                
           manager e = new manager();
                      e.setUsername(username);
                      e.setPassword(password);
                   System.out.println(username);
                      e.setName(name);
                      e.setEmail(email);
                      e.setNumber(number);
                      e.setAge(age);
                      e.setAddress(address);
                      e.setCity(city);
                      e.setState(state);
                      e.setPart(part);
                      
                      int status=UserDao.updatemanager(e);
          
              if(status > 0) {
                    System.out.println("Successful");
                    
                    response.sendRedirect("profilemanager.jsp");
                }
                                        else
                                        {
                                            response.sendRedirect("profilemanager.jsp");
                                             System.out.println("failed");

                                        }
          
          
      }
      else if(submit.equalsIgnoreCase("register"))
      {
           String username = request.getParameter("username");
            String password=request.getParameter("password");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            int age = Integer.parseInt(request.getParameter("age"));
         
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
                      
                      int status=UserDao.save(e);
                      
                      if(status>0)
                      {
                          response.sendRedirect("register.jsp");
                          System.out.println("Succesfull");
                      }
                      else{
                          response.sendRedirect("register.jsp");
                          System.out.println("failed");
                          
                          
                      }
      } else if(submit.equalsIgnoreCase("Edit1"))
      
      {
             String username = request.getParameter("username");
            String password=request.getParameter("password");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            int age = Integer.parseInt(request.getParameter("age"));
         
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
                      if(status>0)
                      {
                          response.sendRedirect("profile.jsp");
                      }
                      else
                      {
                          response.sendRedirect("profile.jsp");
                      }
                      
                     
      }
     
                       
        %>
    </body>
</html>
