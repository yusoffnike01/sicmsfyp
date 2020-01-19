<%-- 
    Document   : process3
    Created on : Jan 7, 2020, 9:47:39 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="fyp.soap_info"%>
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
    
    soap_info obj=new soap_info();
    
    obj.setUsernamemanager(contractor);
    obj.setName(name);
    obj.setDeviceid(deviceid);
    obj.setLocation(location);
    int status=UserDao.savedevice(obj);
    
    if(status>0)
    {
        response.sendRedirect("page1.jsp");
    }
    else
    {
         response.sendRedirect("page1.jsp");
    }
}

else if(submit.equalsIgnoreCase("Edit"))

{
    String name=request.getParameter("name");
    String deviceid=request.getParameter("id");
    String location=request.getParameter("location");
    
    soap_info obj=new soap_info();
    
    obj.setName(name);
    obj.setDeviceid(deviceid);
    obj.setLocation(location);
    
    int status=UserDao.updatedevice(obj);
    
    if(status>0)
    {
        response.sendRedirect("page1.jsp");
    }
    
    
    else
    {
        response.sendRedirect("page1.jsp");
        
    }
}
            
            %>
    </body>
</html>
