<%-- 
    Document   : notification
    Created on : Oct 1, 2019, 10:47:15 PM
    Author     : user
--%>


<%@page import="fyp.feedback"%>
<%@page import="java.util.List"%>
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
  .tab {
                    overflow: hidden;
                    border: 1px solid #ccc;
                    background-color: #f1f1f1;
                    width:60%;
                    margin-left: 20%;
                    margin-top:5%;

                }

                /* Style the buttons inside the tab */
                .tab button {
                    background-color: inherit;
                    float: left;
                    border: none;
                    outline: none;
                    cursor: pointer;
                    padding: 14px 16px;
                    transition: 0.3s;
                    font-size: 17px;
                }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: #ccc;
                }


                .tabcontent {
                    display: none;
                    padding: 6px 12px;
                    border: 1px solid #ccc;
                    border-top: none;
                    width:60%;
                    margin-left: 20%;
                    background-color: white;
                }
   
    #profileid
            {
                
              width:12%;
                height:45px;

                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
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
            
             .navbar-nav
    {
      
       margin-left:520px;
       
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

content-table
{
    border-collapse: collapse;
 
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



@media  (max-width: 768px) {
    
  .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
                width:95%;
                margin-left: 3%;
                margin-top:5%;
               
            }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 8px 10px;
                transition: 0.3s;
                font-size: 12px;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }
            
              .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
                width:95%;
                margin-left: 3%;
                background-color: white;
            }
   

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
        <a href="#"class="navbar-brand mr-3"><img src="<%=e.getBase64Image() %>"  id="profileid" > Cleaner</a>
        
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
                
            </div>
            <div class="navbar-nav ml-auto">
  <div class="dropdown">
                     <a href="table.jsp" class="nav-item nav-link">Dashboard</a>
                     
                    
                </div>
                 
                  
                  <div class="dropdown">
                  
                <a href="Report.jsp#" class="nav-item nav-link">Monitor </a>
                 
                  </div>
                <a href="notification.jsp" class="nav-item nav-link active">Notification</a>
            
                 <a href="profile.jsp" class="nav-item nav-link">profile</a>
            <a href="index.jsp" class="nav-item nav-link">LogOut</a>
                
            </div>
        </div>
    </div> 
        
       
</nav>
        
        
         <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'message')"> <p> Message </p></button>
                <button class="tablinks" onclick="openCity(event, 'list')"><p>List Message  </p></button>
             
            </div>
   <div id="message" class="tabcontent">
     
             
                     
                     
                
                
                      <center>
                          <%
                               List<User>test=UserDao.getemail(e.getUsername());
            
             for(User m:test)
             {
                              
                              %>
                      <form id="contact-inform" method="POST" action="processmessage.jsp">
                          <input  type="hidden" name="manager" class="form-control" placeholder="Enter the manager" value="<%=e.getUsernamemanager() %>" >
                                  <br>
                          <input type="text"  name="name" class="form-control" placeholder="Enter the name" value="<%=e.getUsername() %>">
                          
                          <br>
              <input type="hidden" name="sub" value="Cleaner <%=e.getUsername() %>"  />          
<input type="hidden" name="mail" value="<%=e.getEmail()%>" />
                           <textarea name="message" class="form-control" placeholder="Message"  required>
                           </textarea><br>
                           
                          
                              <button onclick="alert('Sucessfull')" class="btn btn-info">SEND MESSAGE</button>
                      </form>
                           <%
             }
           %>
                      </center>
                  </div>

                      
                      <div id="list" class="tabcontent">
                          <center>     
                          <div class="table-responsive">   
                <table class="content-table">                <thead>
            <tr>
                <th>Contractor</th>
                <th>message</th>
                <th>Date</th>
                
  <th colspan="1">Action</th>


            </tr>
            </thead>
                          <%
                              List<feedback>list=UserDao.getlistmessage(e.getUsernamemanager());
                              
for(feedback obj:list)

{
    %>
    <tr>
        <td><%=obj.getUsernamemanager() %></td>
          
        <td> <%=obj.getMessage() %></td>
        <td><%=obj.getTime() %></td>
        <td><a href="delete3.jsp?time1=<%=obj.getTime() %>"<button onclick="return confirm('Are you sure to delete?')" class="btn btn-info">Delete</button></td>
    </tr>
   
    
    <%
}
                              
                              
                              %>
                          
                         
                          </table>     
                          </div>
                          </center>
                      </div>
                      <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>

</body>


</html>
