<%-- 
    Document   : notification
    Created on : Oct 1, 2019, 10:47:15 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                     margin: 0;
                padding: 0;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg") ;
                justify-content: center;
                min-height: 100vh;
                background-size: cover;
            }
            
             *{
                margin: 0px;
                padding:0px;
                font-family: sans-serif;
                
            }
               #bar
            {
                position: fixed;
                width:14%;
                height:100%;
                background: #33cce6;
                left: -200px;
               margin-top:-5%;
                transition: all 500ms linear;
            }
            
            
            #bar.active
            {
                left:0px;
            }
            #bar ul li{
                color:rgba(238,230,230,0.9);
                list-style: none;
                padding: 15px 10px;
                border-bottom: 1px solid rgba(100,100,100,0.3)
            }
            
            #bar ul li:hover
            {
                color:#003333
            }
            
            #bar .toggle-btn
            {
                position: absolute;
                left: 230px;
                top:20px;
                
            }
            #bar .toggle-btn span{
                display: block;
                width:30px;
                height: 5px;
                background: #151719;
                margin: 3px 0px;
                
            }
           
             #profileid
            {
                
                width:36%;
                height:70px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
                position:absolute;
                margin-top: 1px;
                margin-left: 10px;
                
                
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
                margin-top: 50px;
                transition: all 4s ease-in-out;
                
                
            }
            
            .form-control
            {
                width:600px;
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
                 
                User e = UserDao.getUserBySession((String)session.getAttribute("user"));
       
        %>
       <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">
                
                <span></span>
                <span></span>
                <span></span>
            </div>
          <ul>
              
            
              <li>
                  <img src="<%=e.getBase64Image() %>"  id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw; color:black"> <%=e.getUsername() %></P>
                  <br>
                  <br>
              </li>
         
             
                <a href="table.jsp">  
                    <li style="font-size:1.2vw; color:black"> Dashboard</li
                </a>
                <a href="Report.jsp">   
                    <li style="font-size:1.2vw; color:black"> Analysis</li>
                </a>
               
               <a href="notification.jsp">  
                    <li style="font-size:1.2vw; color:black"> Notification</li
                </a>
                  <a href="profile.jsp">  
                <li style="font-size:1.2vw; color:black">Profile</li>
                  </a>
                <a href="index.jsp">  
                    
                    <li style="font-size:1.2vw; color:black">Log Out</li>
                </a>
            </ul>
        </div>
                  <div class="main">
                      <center>
                      <form id="contact-inform" method="POST" action="processmessage.jsp">
                          <input  type="hidden" name="manager" class="form-control" placeholder="Enter the manager" value="<%=e.getUsernamemanager() %>" >
                                  <br>
                          <input type="text"  name="name" class="form-control" placeholder="Enter the name" value="<%=e.getUsername() %>">
                          <br>

                           <textarea name="message" class="form-control" placeholder="Message"  required>
                           </textarea><br>
                              <button onclick="alert('Sucessfull')">SEND MESSAGE</button>
                      </form>
                      </center>
                  </div>
    </body>
</html>
