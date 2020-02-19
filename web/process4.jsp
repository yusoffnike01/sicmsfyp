<%-- 
    Document   : process4
    Created on : Feb 18, 2020, 1:04:34 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="fyp.count"%>
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
            
if(submit.equalsIgnoreCase("Submit"))

{
    String contractor=request.getParameter("contractor");
    String name=request.getParameter("name");
    String deviceid=request.getParameter("device");
    String location=request.getParameter("location");
    
    count obj=new count();
    
    obj.setUsernamemanager(contractor);
    obj.setName(name);
    obj.setDeviceid(deviceid);
    obj.setLocation(location);
    int status=UserDao.savedevice2(obj);
    
    if(status>0)
    {
        response.sendRedirect("page2.jsp");
    }
    else
    {
         response.sendRedirect("page2.jsp");
    }
}

else if(submit.equalsIgnoreCase("Edit"))

{
    String name=request.getParameter("name");
    String deviceid=request.getParameter("id");
    String location=request.getParameter("location");
    
    count obj=new count();
    
    obj.setName(name);
    obj.setDeviceid(deviceid);
    obj.setLocation(location);
    
    int status=UserDao.updatedevice2(obj);
    
    if(status>0)
    {
        response.sendRedirect("page2.jsp");
    }
    
    
    else
    {
        response.sendRedirect("page2.jsp");
        
    }
}
            
            %>
    </body>
</html>
