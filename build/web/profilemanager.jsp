<%-- 
    Document   : profilemanager
    Created on : Nov 8, 2019, 10:18:52 AM
    Author     : user
--%>

<%@page import="fyp.forget"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.manager" %>
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
             background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg") ;
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
               background-image: url("102456.jpg");
             
                color: white;
                font-size: 1.3vw;
                
                cursor: pointer;
                width:auto;
            }

            #buttonEdit:hover {
                background-color: #b9c7f0;
            }
            
              .kotak
            {
                  background-image: url("102456.jpg");
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
               background-image: url("blue-sky-hd-wallpaper-1.jpg");
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
            
            #kedudukan
            {
                position:absolute;
                 margin-left: 38.5%;
                margin-top: 78px;
                font-weight: bold;
                font-family: sans-serif;
                font-size:1.5vw;
                
            }
            
         
            .content-base
            
            {
                width:100%;
                background-color:#C2F9F6;
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

             manager e = UserDao.getmanagerBySession((String)session.getAttribute("user"));
             
forget m=UserDao.getforgetsession((String)session.getAttribute("user"));

        %>
        <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">

                <span></span>
                <span></span>
                <span></span>
            </div>
            <ul>


                <li>
                                 <img src="<%=e.getBase64Image() %>" id="profileid1" > <p style="padding-left:60%; padding-top: 20px;"> <%=e.getUsername() %> <br> Contractor</P>
                    <br>
                    <br>
                 
                </li>
                 <a href="page1.jsp">  
                    <li style="font-size:1.2vw; color:black"> Dashboard</li
                </a>
                <a href="reportmanager.jsp">   
                    <li style="font-size:1.2vw; color:black"> Analysis</li>
                </a>
             
               <a href="notificationmanager.jsp">  
                    <li style="font-size:1.2vw; color:black"> Notification</li
                </a>
               <a href="register.jsp">  
                    <li style="font-size:1.2vw; color:black"> Management cleaner</li
                </a>
                  <a href="profilemanager.jsp">  
                <li style="font-size:1.2vw; color:black">Profile</li>
                  </a>
                <a href="index.jsp">  
                    
                    <li style="font-size:1.2vw; color:black">Log Out</li>
                </a>            </ul>
        </div>

      


        <div class="kotak">
             
          
                
                <img src="<%=e.getBase64Image() %>"  id="profileid" > 
           


            
                
                   
                          <h1 id="title"><%=e.getUsername() %>
                              <br> Contractor
                          </h1>
                
                     
                        <h4 style="padding-left:10%; padding-top:240px;"> Name:<%=e.getName() %>
                            
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
                   
                        <br><br><br>
                       
                       <div id="buttonEdit">

                    <a href="updateprofillemanager.jsp?username=<%=e.getUsername()%>">Edit Profile</a>

                
                    </div> 
                        
                    
        </div>
    
    
    
 

</body>
</html>
