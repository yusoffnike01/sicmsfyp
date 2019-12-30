<%-- 
    Document   : processforget
    Created on : Aug 11, 2019, 4:29:10 PM
    Author     : user
--%>

<%@page import="fyp.manager"%>
<%@page import="fyp.User"%>
<%@page import="fyp.forget"%>
<%@page import="fyp.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        
        <style>
            
                body
            {
                margin: 0;
                padding: 0;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
                align-items: center;
                display:flex;
                font-family: sans-serif;
                justify-content: center;
                min-height: 100vh;

            }
            
            
            
            
             form
            {
                background-color:white;
                padding: 20px;
                width: 450px;
                margin: 50px auto;
                border: 2px solid #2481f2;
  border-radius: 8px;
            }
            
            input[type=text]
            {
                width:280px;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            
            input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            
             input[type=email]
            {
                 width:280px;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            input[type=submit]:hover
            {
                background-color: whitesmoke;
            }
           
              
            input[type=button]
            {
                 width:100px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            input[type=button]:hover
            {
                background-color: whitesmoke;
            }
            </style>
            
    </head>
    <body>
          <% 
             
                  String username=request.getParameter("username");
                  String favourite=request.getParameter("favourite");
                  String role=request.getParameter("role");
                    forget obj=UserDao.getforgetsession(username);
                  forget obj3=UserDao.getforgetcleaner(username);

if(username.equals(obj.getUsername())&&favourite.equals(obj.getFavourite())&&role.equalsIgnoreCase("CO"))

{
                 
 
      manager obj2=UserDao.getmanagerBySession(username);
        


    %>
    
    
    <form  action="processforget2.jsp" method="POST" name="myForm">
        <table class="id">
            <tr>
                
                <td colspan="2">
                    Change the password:
                </td>
            </tr>
            <tr>
                
                <td>
                    username:
                </td>
                <td>
                <input type="text" name="username" value="<%=obj2.getUsername() %>">
                
                    
                </td>
            </tr>
      
            <tr>
                
                <td>
                     password:
                </td>
                <td>
                      <input type="password" name="password" value="<%=obj2.getPassword() %>">
                </td>
            </tr>
            <tr>
                
                <td>
                    Repassword:
                    
                </td>
                <td>
                       <input type="password" name="repassword">
                    
                </td>
            </tr>
            <tr>
                
                <td>
                    
                </td>
                
                <td>
                      <input type="submit" name="submit" value="Submit">
                </td>
            </tr>
      
        </table>
    </form>
    </p>
    
    <%
}

else if (username.equals(obj3.getUsername())&&favourite.equals(obj3.getFavourite())&&role.equalsIgnoreCase("CL")){


%>
 <form  action="processforget2.jsp" method="POST" name="myForm">
        <table class="id">
            <tr>
                
                <td colspan="2">
                    Change the password:
                </td>
            </tr>
            <tr>
                
                <td>
                    username:
                </td>
                <td>
                <input type="text" name="username" value="<%=obj3.getUsername() %>">
                
                    
                </td>
            </tr>
      
            <tr>
                
                <td>
                     password:
                </td>
                <td>
                      <input type="password" name="password" value="">
                </td>
            </tr>
            <tr>
                
                <td>
                    Repassword:
                    
                </td>
                <td>
                       <input type="password" name="repassword">
                    
                </td>
            </tr>
            <tr>
                
                <td>
                    
                </td>
                
                <td>
                      <input type="submit" name="submit" value="Submit1">
                </td>
            </tr>
      
        </table>
    </form>
    


<%
    
    
}
else
{
response.sendRedirect("forget.jsp");
}
            %>
    </body>
</html>
