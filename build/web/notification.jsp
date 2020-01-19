<%-- 
    Document   : notification
    Created on : Oct 1, 2019, 10:47:15 PM
    Author     : user
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>

<%@page import="fyp.User"%>




<!DOCTYPE html>
<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Analysis</title>
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
                
              width:8%;
                height:45px;

                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
         
         

 .main{
                width: 50%;
                color:#fff;
                background-color: white;
                text-transform: uppercase;
                transition: all 4s ease-in-out;
                margin-left: 27%;
                margin-top: 5%;
            }
            
            form{
                margin-top: 5%;
                transition: all 4s ease-in-out;
                
                
            }
            
            .form-control
            {
                width:70%;
                background-color: white;
                border:none;
                outline:none;
                border-bottom: 1px solid gray;
                color:black;
                font-size: 18px;
                margin-bottom: 16px;
            }
            
            input{
                height: 45px;
               
                
                
            }
            
            form .submit{
                background: #ff5722;
                border-color:transparent;
                font-size:20px;
                font-weight:bold;
                letter-spacing: 2px;
                height:50px;
                margin-top: 20px;
            }
            
            form .submit:hover
            {
               color:#f44336;
           
                
            }


@media  (max-width: 768px) {
    
  
   

              #profileid
            {
                
                width:20%;
                height:40px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            
             .main{
                width: 100%;
                color:#fff;
                background-color: white;
                text-transform: uppercase;
                transition: all 4s ease-in-out;
                margin-left: 0%;
                margin-top: 5%;
            }
            
            form{
                
                transition: all 4s ease-in-out;
                
                
            }
            
            .form-control
            {
                width:60%;
                background-color: white;
                border:none;
                outline:none;
                border-bottom: 1px solid gray;
                color:black;
                font-size: 15px;
                margin-bottom: 16px;
            }
            
            input{
                height: 3%;
               
                
                
            }
            
            form .submit{
                background: #ff5722;
                border-color:transparent;
                font-size:15px;
                font-weight:bold;
                letter-spacing: 1%;
                height:50px;
                margin-top: 5%;
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
   
             
           </script>
</head>


  
<body>
    
      <% 
                 
               User e = UserDao.getUserBySession((String) session.getAttribute("user"));
       
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
           <a href="table.jsp" class="nav-item nav-link">Dashboard</a>
                <a href="Report.jsp" class="nav-item nav-link ">Analysis</a>
                <a href="notification.jsp" class="nav-item nav-link active">Notification</a>
               
                  <a href="profile.jsp" class="nav-item nav-link">profile</a>
                    <a href="index.jsp" class="nav-item nav-link">LogOut</a>
                
            </div>
        </div>
    </div>    
</nav>
   <div class="main">
                      <center>
                      <form id="contact-inform" method="POST" action="processmessage.jsp">
                          <input  type="hidden" name="manager" class="form-control" placeholder="Enter the manager" value="<%=e.getUsernamemanager() %>" >
                                  <br>
                          <input type="text"  name="name" class="form-control" placeholder="Enter the name" value="<%=e.getUsername() %>">
                          <br>

                           <textarea name="message" class="form-control" placeholder="Message"  required>
                           </textarea><br>
                              <button onclick="alert('Sucessfull')" class="btn btn-info">SEND MESSAGE</button>
                      </form>
                      </center>
                  </div>

</body>


</html>
