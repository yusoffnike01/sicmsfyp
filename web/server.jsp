<%-- 
    Document   : server
    Created on : Feb 25, 2020, 6:49:03 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.soap_info"%>
<%@page import="fyp.information"%>

<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>
<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
                 
                manager e = UserDao.getmanagerBySession1();
       
        %>
        <script>
            function countDown(secs, elem)
            {
                var element = document.getElementById(elem);

                if (secs < 1) {
                    document.quiz.submit();
                } else
                {
                    secs--;
                    setTimeout('countDown(' + secs + ',"' + elem + '")', 1500);
                }
            }

            function test() {
                return true;
            }
        </script>
        
         <script type="text/javascript">countDown(100, "status");</script>
        
        <% 
   result obj1=UserDao.getcount();
   
if(obj1.getCount()>0)
{
    System.out.println("device okey");
}

else
    
{
    %>
      <script type="text/javascript">countDown(10, "status");</script>
   <form name="quiz" id="myquiz" onsubmit="return test()" method="post" action="sent5.jsp">

            <input type="hidden" name="mail" value="<%=e.getEmail()%>" />

            <input type="hidden" name="sub" value="">
            <input type="hidden" name="mess" value="Something Wrong to the device or battery. Please check it now" border="none"></input>

        </form>

    
    
    <%
}
%> 
    </body>
</html>
