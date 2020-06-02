<%-- 
    Document   : managecontractor
    Created on : May 9, 2020, 2:46:03 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.manager"%>
<%@page import="fyp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
          <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
<style>
    
            
              body {
  font-size: 12px;
  line-height: 1.5;
  color: #222;
  font-weight: 400;


 }
 .table-responsive-lg
 {
     margin-top:10%;
 }
        </style>
    </head>
    <body>
        
        <div data-role="appbar" class="fg-white bg-lightCobalt" data-expand-point="md">
  
    <a href="/" class="brand no-hover">
      <h4>SICMS</h4>
    </a>
  

  <ul class="app-bar-menu ml-auto">
    <li><a href="managecontractor.jsp">Manage</a></li>
    
      <li>
        <a href="registercontractor.jsp">register</a>
       
      </li>
      <li>
        <a href="homepage.html">Log Out</a>
      </li>
    
  </ul>
</div>
    <center>
        
            <div class="table-responsive-lg">
                  
            <table class="table table-striped">
              
                <tr>
                    <th>
               Username</th>
                <th>Name</th>
                <th>Company</th>
                <th>IC</th>
                <th>Email</th>
                <th>No Phone</th>
                <th>Age</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th colspan="2">Action</th>
                </tr>
                <%
            
            List<manager>list=UserDao.getAllmanager();
            for(manager a:list)
            {
                
            
            
            %>
                <tr>
                    <td><%=a.getUsername() %></td>
                    <td><%=a.getName() %></td>
                    <td><%=a.getCompany() %></td>
                    <td><%=a.getIc() %></td>
                    <td><%=a.getEmail()  %></td>
                    <td><%=a.getNumber() %></td>
                    <td><%=a.getAge() %></td>
                    <td><%=a.getAddress() %></td>
                    <td><%=a.getCity() %></td>
                    <td><%=a.getState() %></td>
                    <td> <a href="delete7.jsp?id=<%=a.getUsername() %>"<button type="submit" onclick="return confirm('Are you sure to delete?')"class="btn btn-info" name="submit">Delete</button></a></td>
                </tr>
                  <%}
                %>
               
            </table>
            </div>
                                 

    </center>
     <script>
      
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
     
      </script>
   
    </body>
</html>
