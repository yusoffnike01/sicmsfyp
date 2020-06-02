<%-- 
    Document   : adminprocess
    Created on : May 8, 2020, 9:46:50 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.manager"%>
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
            if(submit.equalsIgnoreCase("Sign up"))
            {
                String username=request.getParameter("username");
               String password=request.getParameter("pass");
               String name=request.getParameter("name");
               String company=request.getParameter("company");
               String ic=request.getParameter("ic");
               String email=request.getParameter("email");
               String phone=request.getParameter("phone");
               int age=Integer.parseInt(request.getParameter("age"));
               String nation=request.getParameter("nation");
               String address=request.getParameter("address");
               String city=request.getParameter("city");
               String state=request.getParameter("state");
               Part part=request.getPart("image");
               
               manager obj=new manager();
               obj.setUsername(username);
               obj.setPassword(password);
               obj.setCompany(company);
               obj.setIc(ic);
               obj.setName(name);
               obj.setEmail(email);
               obj.setNumber(phone);
               obj.setAge(age);
               obj.setNation(nation);
               obj.setAddress(address);
               obj.setCity(city);
               obj.setState(state);
               obj.setPart(part);
               int status=UserDao.savemanager(obj);
               if(status>0)
               {
                   response.sendRedirect("registercontractor.jsp");
                   System.out.println("successfull");
               }
               else
               {
                   response.sendRedirect("registercontractor.jsp");
                   System.out.println("fail");
               }
            }
            
            
            %>
    </body>
</html>
