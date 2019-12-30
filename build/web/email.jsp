<%-- 
    Document   : email
    Created on : Dec 11, 2019, 11:04:57 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="sent.jsp" method="POST">
            <table>
                <td align="right"> To</td>
                <td> <input type="email" name="email"></td>
                <td>Subject</td>
                <td><textarea name="subject"></textarea></td>
                <td>  <input type="submit" name="submit"></input></td>
            </table>
            
        </form>
    </body>
</html>
