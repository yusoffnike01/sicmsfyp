<%-- 
    Document   : process5
    Created on : Jun 10, 2020, 1:13:07 AM
    Author     : user
--%>

<%@page import="fyp.quantityused"%>
<%@page import="fyp.keycode"%>
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
            String code = request.getParameter("code");

            keycode obj2 = UserDao.getkeycodesession(code);

            if (code.equals(obj2.getCode())) {
                
                String device = request.getParameter("device");
                 
                quantityused obj1 = new quantityused();
                obj1.setCode(code);
                obj1.setDeviceid(device);
                System.out.println("Device"+device);
                int status = UserDao.getresultsession(device);
                int status2 = UserDao.deletecode(code);
                
                int status3 = UserDao.savequantityused(obj1);
                
                response.sendRedirect("Report.jsp");
            } else {
                response.sendRedirect("Report.jsp");
            }


        %>
    </body>
</html>

    </body>
</html>
