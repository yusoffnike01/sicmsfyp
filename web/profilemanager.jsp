<%-- 
    Document   : newjsp
    Created on : Jan 14, 2020, 10:09:51 PM
    Author     : user
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>

<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
 .kotak
            {
                  background-image: url("102456.jpg");
                 width:50%;
                 
                height:540px;
                border: 2px solid #2481f2;
  border-radius: 5px;
                margin-left: 350px;
            }
            
            
            .kotak h4
            
            {
                font-size: 18px;
                padding-top: 30%; padding-left: 5%;
            }
    .navbar-nav
    {
      
       margin-left:420px;
       
    }
    
            
       

    #profileid1
            {
               
                margin-top: 1%;
                margin-left: 35%;
               
                 width:12%;
                height:150px;
                
                border:2px solid #34495e;
         
                box-sizing: border-box;
                position:absolute;
                
                
            }
            
 
            #title
            {
                 position:absolute;
                font-family: sans-serif;
                margin-left: 38.5%;
                margin-top:200px;
                color:black;
                font-family: sans-serif;
                font-size:1.5vw;
            }
            #buttonEdit {
                float: right;
             
               position: absolute;
               background-image: url("102456.jpg");
             margin-left: 40%;
            
                color: white;
                font-size: 1.3vw;
                
                cursor: pointer;
                width:auto;
            }

            #buttonEdit:hover {
                background-color: #b9c7f0;
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

            @media(min-width:1440px)
            {
                #profileid
            {
                
                width:14.1%;
                height:45px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            }
@media  (max-width: 768px) {
                    

            
    .navbar-nav
    {
      
       margin-left:4%;
       
    }
    
    .kotak
            {
                  background-image: url("102456.jpg");
                 width:100%;
               margin-left: 0px;
                height:auto;
                border: 2px solid #2481f2;
    
  border-radius: 5px;
               
            }

     .kotak h4
            
            {
                font-size: 14px;
                padding-top: 50%; padding-left: 3%;
            }
            
            
    #profileid1
            {
               
margin-left: 75%;
                 width:20%;
                height:15%;
                
                border:2px solid #34495e;
         
                box-sizing: border-box;
                position:absolute;
                
                
            }
  #title
            {
                 position:absolute;
                font-family: sans-serif;
                margin-left: 75%;
                margin-top:35%;
                color:black;
                font-family: sans-serif;
                font-size:14px;
            }
              #profileid
            {
                
                width:18%;
                height:40px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            
               #buttonEdit {
               
             border: 2px solid #2481f2;
  border-radius: 5px;
               position: static;
               background-image: url("102456.jpg");
            padding-left: 75%;
          margin-top: : 0%;
                color: white;
                font-size: 15px;
                
                cursor: pointer;
                width:100%;
            }
             #buttonEdit:hover {
                background-color: #b9c7f0;
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
                 
               
                
                
                
                
                <a href="notificationmanager.jsp" class="nav-item nav-link">Notification</a>
                <a href="register.jsp" class="nav-item nav-link">Management</a>
                  <a href="profilemanager.jsp" class="nav-item nav-link active">profile</a>
                    <a href="index.jsp" class="nav-item nav-link">LogOut</a>
            </div>
        </div>
    </div>    
</nav>

   <div class="kotak">
             
          
                
                <img src="<%=e.getBase64Image() %>"  id="profileid1" > 
           


            
                
                   
                          <h1 id="title"><%=e.getUsername() %>
                              <br> Contractor
                          </h1>
                
                     
                        <h4> Name:<%=e.getName() %>
                            
                            <br><br>
                            Email:<%=e.getEmail()  %>
                            
                            <br><br>
                            Number:<%=e.getNumber()  %>
                        
                            
                            <br><br>
                            Age:<%=e.getAge() %>
                            <br><br>
                            Address:<%=e.getAddress() %>
                        
                            <br><br>
                            City:<%=e.getCity() %>
                            
                            <br><br>
                            State:<%=e.getState() %>
                        </h4>
                   
                     
                       
                       <div id="buttonEdit">

                    <a href="updateprofillemanager.jsp?username=<%=e.getUsername()%>">Edit Profile</a>

                
                    </div> 
                        
                    
        </div>
    
     
 
</body>


</html>
