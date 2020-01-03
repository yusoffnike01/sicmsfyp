<%-- 
    Document   : profile
    Created on : Jul 10, 2019, 12:03:27 AM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
 <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <style>
            body{
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
            *{
                margin: 0px;
                padding:0px;
                font-family: sans-serif;

            }
            #bar
            {
                position: fixed;
                width:200px;
                height:100%;
                background: #33cce6;
                left: -200px;
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

          



            #buttonEdit {
                float: right;
                margin-right: 50px;
                background-color: white;
             
                color: white;
                font-size: 1.3vw;
                border: 1px solid #4287f5;
                cursor: pointer;
                width:auto;
            }

         
              .kotak
            {
                background-color: white;
                 width:50%;
                height:600px;
                border: 2px solid #2481f2;
  border-radius: 5px;
                margin-left: 40px;
            }

            .in
            { 
               width:100%;
               height: 30%;
               background-color: white;
               background-size: cover;
            }
            
            #profileid
            {
               
                margin-top: 10px;
                margin-left: 500px;
               
                 width:170px;
                height:170px;
                
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
                font-size:1.9vw;
            }
                     
         
       
            #profileid1
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

            User obj2 = UserDao.getUserBySession((String) session.getAttribute("user"));

        %>
        <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">

                <span></span>
                <span></span>
                <span></span>
            </div>
            <ul>


                <li>
                                 <img src="<%=obj2.getBase64Image() %>" id="profileid1" > <p style="padding-left:60%; padding-top: 20px; color:black"> <%=obj2.getUsername() %></P>
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

        <%

            User obj = UserDao.getUserBySession((String) session.getAttribute("user"));

        %>


        <div class="kotak">
             
                
                <img src="<%=obj.getBase64Image() %>"  id="profileid" > 
           


        
                

                          <h1 id="title"><%=obj.getUsername() %>
                              <br>
                
                              Cleaner</h1>
                              <br><br>
                        <h4 style="padding-left:10%; padding-top:240px;"> Name:<%=obj.getName() %>
                            <br><br>
                            Email:<%=obj.getEmail()  %>
                            <br><br>
                            Number:<%=obj.getNumber()  %>
                        
                            <br><br>
                            Age:<%=obj.getAge() %>
                            <br><br>
                            Address:<%=obj.getAddress() %>
                        
                            <br><br>
                            City:<%=obj.getCity() %>
                            
                            <br><br>
                            State:<%=obj.getState() %>
                        </h4>
                   
                        <br><br><br>
                       
                       <div id="buttonEdit">

                    <a href="updateprofile.jsp?username=<%=obj.getUsername()%>">Edit Profile</a>


                    </div> 
                        
                    
        </div>
    
    
    
 

</body>
</html>
