<%-- 
    Document   : search
    Created on : Mar 16, 2020, 10:35:41 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             .content-table
            {
                border-collapse: collapse;
                margin:25px 0;
               
                width: 70%;
                border-radius: 5px 5px 0 0;

            }

            .content-table thead tr
            {
                background-color:#25f0f7;
                color:black;
                text-align:left;
                font-weight:bold;

            }

            .content-table th,.content-table td{

                padding: 10px 13px;


            }

            .content-table tbody tr
            {
                border-bottom: 1px solid #EE83F2;
            }




            .content-table tbody tr:last-of-type
            {
                border-bottom: 2px solid #1FF6CB;
            }
            
            </style>
    </head>
    <body>
        <%
        String search=request.getParameter("search");
        
        
                
                

              
        %>
                  <table class=" content-table">
                        
                        <thead>
                            <tr>
                                <th>Username</th>

                                <th>Name</th>
                                <th>IC</th>
                                <th>Email</th>
             
                                <th>Age</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>State</th>
                      





                            </tr>
                        </thead>
                        <%
                            List<User> list=UserDao.getsearchcleaner(search);
             
                            for(User obj :list)
                            {
                            %>
                        <tr>
                            <td><%=obj.getUsername() %></td>
              
                            <td><%=obj.getName() %></td>
                            <td><%=obj.getIc() %></td>
                            <td><%=obj.getEmail() %></td>

                            <td><%=obj.getAge() %></td>
                            <td><%=obj.getAddress() %></td>
                            <td><%=obj.getCity() %></td>
                            <td><%=obj.getState() %></td>
                        </tr>
                        <%}
%>
                                </table>
    </body>
</html>
