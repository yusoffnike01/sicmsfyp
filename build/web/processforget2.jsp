<%-- 
    Document   : processforget2
    Created on : Aug 11, 2019, 4:38:28 PM
    Author     : user
--%>

<%@page import="fyp.manager"%>
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
            
            String submit=request.getParameter("submit");
            
            if(submit.equalsIgnoreCase("Submit")){
                
                 String username=request.getParameter("username");
            String password=request.getParameter("password");
            String repassword=request.getParameter("repassword");
               if(password.equals(repassword))
               {
                  manager obj= new manager();
                  obj.setUsername(username);
                  obj.setPassword(password);
                  
                  int status=UserDao.getupdate(obj);
                  if(status>0)
                  {
                      response.sendRedirect("index.jsp");
                      System.out.println("Sucessfull");
                  }
               
                      
                   
               }
               else
               {
                   response.sendRedirect("index.jsp");
      System.out.println("fail");

               }
     
            } else if(submit.equalsIgnoreCase("Submit1"))
            
            {
                 String username=request.getParameter("username");
            String password=request.getParameter("password");
            String repassword=request.getParameter("repassword");
            
            if(password.equals(repassword))
            {
                User obj2=new User();
                obj2.setUsername(username);
                obj2.setPasword(password);
                
                int status=UserDao.getupdatepassword(obj2);
              if(status>0)
              {
                  response.sendRedirect("index.jsp");
                  System.out.println("succesfull");
              }
              else{
                  
                  response.sendRedirect("index.jsp");
                                    System.out.println("fail");

              }
              
                
            }
            else
            {
                response.sendRedirect("forget.jsp");
            }
            
            
            }
           

                
              
            %>
    </body>
</html>
