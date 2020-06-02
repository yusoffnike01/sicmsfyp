<%-- 
    Document   : process
    Created on : Jul 11, 2019, 5:34:21 PM
    Author     : user
--%>


<%@page import="fyp.information"%>
<%@page import="fyp.manager"%>
<%@page import="fyp.keycode"%>
<%@page import="fyp.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="fyp.User"%>

<%@page import="fyp.result"%>
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
                
                if(submit.equalsIgnoreCase("Login"))
                {
                     String username=request.getParameter("username");
              String password=request.getParameter("password");
           
              User obj =UserDao.getLoginBySession(username, password);
              System.out.println("name"+ obj.getUsername());
              manager obj2=UserDao.getLoginmanagerBySession(username, password);
            
              if(username.equals(obj.getUsername())&&password.equals(obj.getPasword()))
              {
                 
                  response.sendRedirect("table.jsp");
                  
              }
              else if(username.equals(obj2.getUsername())&& password.equals(obj2.getPassword()))
              {
                  
                  response.sendRedirect("page1.jsp");
              }
           
            
            
            else{
                response.sendRedirect("index.jsp");
            }
          
               
               int a=0;
             List<User>list=UserDao.getAllUser();
             for(User e:list)
             {
             
                 if(username.equals(e.getUsername()))
                 {
                       a=0;
                      session.setAttribute("user", e.getUsername());
                              
                 }
                    
                 a++;
             }
              
            
             
                  int b=0 ;
                  List<manager>list2=UserDao.getAllmanager();
                  
 for(manager e:list2)
             {
             
                 if(username.equals(e.getUsername()))
                 {
                       b=0;
                      session.setAttribute("user", e.getUsername());
                              
                 }
                    
                 b++;
             }
              
                }
             


                %>
    </body>
</html>
