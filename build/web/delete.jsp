<%-- 
    Document   : delete
    Created on : Dec 20, 2019, 7:28:52 PM
    Author     : user
--%>

<%@page import="fyp.User"%>
<%@page import="fyp.UserDao"%>
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
                String name=request.getParameter("name");
                String ic=request.getParameter("ic");
                String email=request.getParameter("email");
                String number=request.getParameter("number");
                int age=Integer.parseInt(request.getParameter("age"));
                String address=request.getParameter("address");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                 Part part=request.getPart("image");
                
                String deviceid=request.getParameter("id");
                int status = UserDao.getdeleteprofile(username);
                User obj=new User();
                obj.setUsername(username);
                obj.setName(name);
                obj.setIc(ic);
                obj.setEmail(email);
                obj.setNumber(number);
                obj.setAge(age);
                obj.setAddress(address);
                obj.setCity(city);
                obj.setState(state);
                 obj.setPart(part);
                 
                int status1=UserDao.inactive(obj);
                
     
         
                int status2=UserDao.getdeletedevice(deviceid);
                int status3=UserDao.getdeletedevice1(deviceid);
               if(status>0&&status1>0)
                   
                   
{
    response.sendRedirect("register.jsp");
    System.out.println("succesful");
}

else 
{
    response.sendRedirect("register.jsp");
    System.out.println("fail");
}


            %>

    </body>
</html>
