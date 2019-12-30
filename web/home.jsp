<%-- 
    Document   : home
    Created on : Jul 9, 2019, 2:53:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body{
               background-image: url("ena.jpg"); 
               
            margin:0;
            padding:0;
            
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
           
            
        </style>
        
        <script>
            function togglebar()
            {
                document.getElementById("bar").classList.toggle('active');
            }
           </script>
           
    </head>
    <body>
        <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">
                
                <span></span>
                <span></span>
                <span></span>
            </div>
            <ul>
                <li> Home</li>
                <a href="profile.jsp">    <li> Profile</li></a>
                <li>Jadual</li>
                <a href="index.jsp">  <li>Log Out</li></a>
            </ul>
        </div>
         
           
    </body>
</html>
