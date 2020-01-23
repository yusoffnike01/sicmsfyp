<%-- 
    Document   : processforget
    Created on : Aug 11, 2019, 4:29:10 PM
    Author     : user
--%>

<%@page import="fyp.manager"%>
<%@page import="fyp.User"%>

<%@page import="fyp.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        
        <style>
            
         * {
  box-sizing: border-box;
  
}

body{
     background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
                 max-height:  400px;
}
/* Create four equal columns that floats next to each other */
.column {
  float: left;
  width: 40%;
  padding: 20px;
  margin-left: 30%;
  min-height: 200px;
   background-color:white;
    border: 2px solid #2481f2;
  border-radius: 8px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
 
}
.row{
     margin-top:10%;
}
/* On screens that are 992px wide or less, go from four columns to two columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
      margin: 0px;
       background-color:white;
        border: 2px solid #2481f2;
  border-radius: 8px;
  }
  
  input[type=text]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
            
             input[type=password]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
            
              input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
}
@media screen and (max-width: 780px) {
  .column {
    width: 90%;
    margin: 0px;
    margin-left: 5%;
       background-color:white;
        border: 2px solid #2481f2;
  border-radius: 8px;
  }
  
  input[type=text]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
            
             input[type=password]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
            
              input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
}

/* On screens that are 600px wide or less, make the columns stack on top of each other instead of next to each other */
@media screen and (max-width: 360px) {
  .column {
    width: 90%;
    margin: 0px;
    margin-left: 5%;
     background-color:white;
    
     border: 2px solid #2481f2;
  border-radius: 8px;
  }
   input[type=password]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
              input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
  
 
  input[type=text]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
}
input[type=text]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
            
            input[type=password]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(20px+1.3vw);
                
            }
              input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            
            .id{
                width:100%;
            }
}
            </style>
            
    </head>
    <body>
          <% 
             
                  String username=request.getParameter("username");
                  String favourite=request.getParameter("favourite");
                  String role=request.getParameter("role");
                    manager obj=UserDao.getforgetsession(username);
                  User obj3=UserDao.getforgetcleaner(username);

if(username.equals(obj.getUsername())&&favourite.equals(obj.getFavourite())&&role.equalsIgnoreCase("CO"))

{
                 
 
      manager obj2=UserDao.getmanagerBySession(username);
        


    %>
   <div class="row">
    
  <div class="column">
    <form  action="processforget2.jsp" method="POST" name="myForm">
        <table class="id">
            <tr>
                
                <td colspan="2">
                    <h4>             Change the password:</h4>
                </td>
            </tr>
            <tr>
                
                <td>
                    <p>   username: </p>
                </td>
                <td>
                <input type="text" name="username" value="<%=obj.getUsername() %>">
                
                    
                </td>
            </tr>
      
            <tr>
                
                <td>
                   <hp>   password: </p>
                </td>
                <td>
                      <input type="password" name="password" value="">
                </td>
            </tr>
            <tr>
                
                <td>
                 <p>    Repassword:  <p>
                    
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
  </div>
  
 
</div>
    <%
}

else if (username.equals(obj3.getUsername())&&favourite.equals(obj3.getFavourite())&&role.equalsIgnoreCase("CL")){


%>

 <div class="row">
    
  <div class="column">
    <form  action="processforget2.jsp" method="POST" name="myForm">
        <table class="id">
            <tr>
                
                <td colspan="2">
                    <h1>             Change the password:</h1>
                </td>
            </tr>
            <tr>
                
                <td>
                    <p>   username: </p>
                </td>
                <td>
                <input type="text" name="username" value="<%=obj3.getUsername() %>">
                
                    
                </td>
            </tr>
      
            <tr>
                
                <td>
                   <p>   password: </p>
                </td>
                <td>
                      <input type="password" name="password" value="">
                </td>
            </tr>
            <tr>
                
                <td>
                 <p>    Repassword:  <p>
                    
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
  </div>
  
 
</div>
<%
    
    
}
else
{
response.sendRedirect("forget.jsp");
}
            %>
    </body>
</html>
