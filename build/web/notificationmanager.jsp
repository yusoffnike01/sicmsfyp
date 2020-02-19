<%-- 
    Document   : notificationmanager
    Created on : Oct 17, 2019, 12:50:24 AM
    Author     : user
--%>

<%@page import="fyp.message"%>
<%@page import="fyp.quantityused"%>
<%@page import="java.util.ArrayList"%>
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
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Notification</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
     * {
  box-sizing: border-box;
}
body
{
     margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                
                font-family: sans-serif;
}
    
    #profileid
            {
                 width:12%;
                height:45px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
             
                
            }
          .navbar-nav
    {
      
       margin-left:420px;
       
    }  
         
          .main{
    
    background-color: whitesmoke;
    margin-left: 20%;
    margin-top: 5%;
    width:60%;
    height:auto;
}


.content-table
{
    border-collapse: collapse;
    margin:25px 0;
    font-size: 0.9em;
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

.dropbtn {
  

  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}
.dropdown {
  position: relative;
  display: inline-block;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}



@media  (max-width: 768px) {
   
  
   .content-table thead tr
{
    background-color:#25f0f7;
    color:black;
    text-align:left;
    font-weight:bold;
    font-size: 14px;
}
              #profileid
            {
                
                width:18%;
                height:40px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            
               .main{
    
    background-color: whitesmoke;
    margin-left: 0%;
    margin-top: 5%;
    width:100%;
    height:auto;
}
.content-table
{
    border-collapse: collapse;
    margin:25px 0;
    font-size: 0.9em;
    width: 90%;
    border-radius: 5px 5px 0 0;
    
}
             
}


</style>

<script>
            function togglebar()
            {
                document.getElementById("bar").classList.toggle('active');
            }
           
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
   
    function myfunctional()
      {
              <%
                  String usernamemanager=request.getParameter("usernamanager");
                  int status=UserDao.deletemessage(usernamemanager);
                  if(status>0)
                  {
                      response.sendRedirect("notificationmanager.jsp");
                  }
                   
                  
                  
                  %>
      }
   
   
             
           </script>
</head>


   
<body>
    
      <% 
                 
                manager e = UserDao.getmanagerBySession((String)session.getAttribute("user"));
       
        %>
        
        <%

            manager obj2 = UserDao.getmanagerBySession((String) session.getAttribute("user"));

        %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3">
    <div class="container-fluid">
        <a href="#"class="navbar-brand mr-3"><img src="<%=e.getBase64Image() %>"  id="profileid" > Contractor</a>
        
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
               
            </div>
            <div class="navbar-nav ml-auto">
           
             <div class="dropdown">
               <a href="#"class="nav-item nav-link">Dashboard</a>
                 <div class="dropdown-content">
  <a href="page1.jsp">Dashboard 1</a>
  <a href="page2.jsp">Dashboard 2</a>
                 </div>
           </div>
                 
                <div class="dropdown">
                     <a href="#" class="nav-item nav-link">Analysis</a>
                    <div class="dropdown-content">
  <a href="reportmanager.jsp">Analysis 1</a>
  <a href="analysis2.jsp">Analysis 2</a>
                 </div>
                     
                </div>      
                 
               
                
                
                
                
                <a href="notificationmanager.jsp" class="nav-item nav-link active">Notification</a>
                <a href="register.jsp" class="nav-item nav-link">Management</a>
                  <a href="profilemanager.jsp" class="nav-item nav-link">profile</a>
                    <a href="index.jsp" class="nav-item nav-link">LogOut</a>
            </div>
        </div>
    </div>    
</nav>
 <div class="main">
            <center>
                                <div class="table-responsive">   
                <form action="" method="POST">
            <table class="content-table">
                <thead>
            <tr>
                <th>username</th>
                <th>message</th>
                
  <th colspan="1">Action</th>


            </tr>
            </thead>
               <%
              List<message> list = UserDao.getalldisplaymessage((String)session.getAttribute("user"));

            for (message obj : list) {



            %>
            
            <tbody>
            <center
               <tr>
                <input  type="hidden" name="usernamanager" value="<%=obj.getUsernamemanager() %>"> 
                <td> <%=obj.getUsername() %></td>
                <td><%=obj.getMessage() %></td>

                <td> <button onclick="return confirm('Are you sure to delete?')" onclick='myfunctional()'  class="btn btn-info">Delete</button></td>

               
            </tr>
            
            </tbody>

 <%}%>




        </table>
                </form>
                                </div>
            
 </center>
        </div>
</body>


</html>
