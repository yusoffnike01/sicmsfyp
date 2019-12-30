
<%-- 
    Document   : index
    Created on : Jul 8, 2019, 7:33:12 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
       
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
            
            .main{
                position:relative;
                width:50%;
                min-height: 300px;
                background: rgba(255,255,255,0.05);
                box-shadow: 0 5px 15px rgba(0,0,0,1);
      
            }
           .main:before
           {
               content:'';  
               position: absolute;
               top:-5px;
               left :-5px;
               width:50%;
               right: -5px;
               bottom: -5px;
               height:100%;
               background: linear-gradient(45deg,#ff0047,#6eff00);
               pointer-events: none;
               animation:animate 10s linear infinite;
           }
           
           @keyframes animate
           {
               0%
               {
                   filter:blur(60px)hue-rotate(0deg);
               }
               100%
               {
                   filter:blur(60px)hue-rotate(360deg);
                   
               }
           }
           
           .form{
               position:absolute;
               width:100%;
               height:100%;
               padding:40px;
              box-sizing: border-box;
              z-index: 1;
           }
           
           .form h2
           {
               margin:0;
    
               padding:0;
               color:#000;
               font-size:24px;
           }
           .form .inputBox
           {
               witdh:100%;
               margin-top: 20px;
               
           }
           .form .inputBox input
           {
               width:100%;
               background: transparent;
               border:none;
               border-bottom: 2px solid #fff;
               outline:none;
               font-size: 18px;
               font-family: sans-serif;
               
           }
           
           ::placeholder
           {
              color:#eee; 
           }
           
           .form .inputBox input[type="submit"]
           {
               background: #fff;
               color:#000;
               border:none;
               font-weight: 800;
               max-width: 98px;
           }
           
           .main :after 
           {
               content: '';
               position: absolute;
               top:-5px;
               left: -5px;
               
           }
        
           
          </style>  
         
    </head>
    <body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
               
              
      
        <div class="main">
            <div class="form">
                <h2>Login Form</h2>
                <form action="process.jsp" method="POST" autocomplete="off">
                    <div class="inputBox">
                        
                        <input type="text" name="username" placeholder="Username" required>
                        
                    </div>
                         <div class="inputBox">
                        
                        <input type="password" name="password" placeholder="Password" required>
                        
                    </div>
                    
                     <div class="inputBox">
                        
                        <input type="submit" value="Login">
                        
                    </div>
                    <a href="forget.jsp"> <p>Forget Password ?</p></a>
                </form>
     
            </div>
            
        </div>
     
        
        
    </body>
</html>
