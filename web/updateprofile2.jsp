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
      
      
     
     String submit=request.getParameter("Submit");
              
      
      
     
       if(submit.equalsIgnoreCase("EditProfiler"))
      {
          try{
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
                  String favourite=request.getParameter("favourite");
                  Part part=request.getPart("image");
  
                if(age<18||age>40)
                {
                    response.sendRedirect("profilemanager.jsp");
                }
                else
                {

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
                      e.setFavourite(favourite);
                    
                       e.setPart(part);
                      int status=UserDao.updatemanager(e);
                         int status2=UserDao.getupdateforgetcontractor(e);
                        int status3=UserDao.updateimage(e);
              if(status > 0&& status2>0) {
                    System.out.println("Successful");
                    
                    response.sendRedirect("profilemanager.jsp");
                }
              else if(status3>0)
              {
                   System.out.println("Successful");
                    
                    response.sendRedirect("profilemanager.jsp");
              }
            
                                                    else
                                        {
                                            response.sendRedirect("profilemanager.jsp");
                                             System.out.println("failed");

                                        }
                }
          }catch(NumberFormatException m)  
          {
              
              response.sendRedirect("profilemanager.jsp");
             
              
              System.out.println("invalid input");
          }
          
      }
      else if(submit.equalsIgnoreCase("register"))
      {
           try{
           String username = request.getParameter("username");
            String password=request.getParameter("password");
            String ic=request.getParameter("ic");
            String usernamemanager=request.getParameter("usernamemanager");
            String name = request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            int age = Integer.parseInt(request.getParameter("age"));
     
            String address = request.getParameter("address");
               String city = request.getParameter("city");
                  String state = request.getParameter("state");
                  String favourite=request.getParameter("favourite");
                  Part part=request.getPart("image");
 
            if(ic.length()<12||ic.length()>13)
            {
                                response.sendRedirect("register.jsp");

            }
            
            if(age<18|| age>40)
            {
                 response.sendRedirect("register.jsp");
                 System.out.println("failed");
            }
            else {
                
           User e = new User();
                      e.setUsername(username);
                      e.setPasword(password);
                      e.setIc(ic);
                      e.setUsernamemanager(usernamemanager);
                      e.setName(name);
                      e.setEmail(email);
                      e.setNumber(number);
                      e.setAge(age);
                      e.setAddress(address);
                      e.setCity(city);
                      e.setState(state);
                      e.setFavourite(favourite);
                      e.setPart(part);
                      
                      int status=UserDao.save(e);
                      int status2=UserDao.inactive(e);
                      
                       int status3=UserDao.savesecure(e);
                   
                       if(status>0 && status3>0)
                      {
                          response.sendRedirect("register.jsp");
                          System.out.println("Succesfull");
                      }
                      else{
                          response.sendRedirect("register.jsp");
                          System.out.println("failed");
                          
                          
                      }
                       
                   
                
                   }
                      
                        }catch(NumberFormatException m)  
          {
              response.sendRedirect("register.jsp");
              System.out.println("invalid input");
          }
      } else if(submit.equalsIgnoreCase("Edit1"))
      
      {
          try{
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
                  String favourite=request.getParameter("favourite");
                  Part part=request.getPart("image");
             if(age<18||age>40)
            {
                response.sendRedirect("profile.jsp");
            }
             else{
               
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
                      e.setFavourite(favourite);
                      e.setPart(part);
                      int status=UserDao.updateUser(e);
                      int     statusa=UserDao.getupdateforget(e);
                      if(status>0&&statusa>0)
                      {
                          response.sendRedirect("profile.jsp");
                      }
                      else
                      {
                          response.sendRedirect("profile.jsp");
                      }
             }
                        }catch(NumberFormatException m)  
          {
              response.sendRedirect("profile.jsp");
              System.out.println("invalid input");
          }
                     
      }
      else if(submit.equalsIgnoreCase("picturecc"))
      {
          
           String username = request.getParameter("username");
             Part part=request.getPart("image");
           
                
           manager e = new manager();
            e.setUsername(username);
                      e.setPart(part);
                      int status=UserDao.updateimage(e);
                      
                      if(status>0)
                      {
                           response.sendRedirect("profilemanager.jsp");
                          
                      }
                      else
                      {
                           response.sendRedirect("profilemanager.jsp");
                           System.out.println("fail");
                      }
      } else if(submit.equalsIgnoreCase("picture"))
      {
           String username = request.getParameter("username");
             Part part=request.getPart("image");
             User obj=new User();
             obj.setUsername(username);
             obj.setPart(part);
             int status=UserDao.updateimagecleaner(obj);
             if(status>0)
             {
                 response.sendRedirect("profile.jsp");
             }
             else
             {
                 response.sendRedirect("profile.jsp");
             }
          
      }
     else if(submit.equalsIgnoreCase("Edit"))
      
      {
          try{
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
                  String favourite=request.getParameter("favourite");
                  Part part=request.getPart("image");
             if(age<18||age>40)
            {
                response.sendRedirect("register.jsp");
            }
             else{
               
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
                      e.setFavourite(favourite);
                      e.setPart(part);
                      int status=UserDao.updateUser(e);
                      int     statusa=UserDao.getupdateforget(e);
                      if(status>0&& statusa>0)
                      {
                          response.sendRedirect("register.jsp");
                      }
                      else
                      {
                          response.sendRedirect("register.jsp");
                      }
             }
                        }catch(NumberFormatException m)  
          {
              response.sendRedirect("register.jsp");
              System.out.println("invalid input");
          }
                     
      }
                       
        %>
    </body>
</html>
