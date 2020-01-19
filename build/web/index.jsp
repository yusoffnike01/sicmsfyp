
<%-- 
    Document   : index
    Created on : Jul 8, 2019, 7:33:12 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>

<!DOCTYPE html>
<html lang="en">
   <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <style>
            
     
     * {
  box-sizing: border-box;
}
            body{
                 margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                
                font-family: sans-serif;
     
                
               
                
            }
            
            .main{
                position:relative;
                width:50%;
                min-height: 320px;
                background: rgba(255,255,255,0.05);
                box-shadow: 0 5px 15px rgba(0,0,0,1);
              
                margin-top: 5%;
          
                
                  
      
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
               width:50%;
               height:80%;
               margin-top:5%;
               margin-left: 16%;
         
           ;
              box-sizing: border-box;
              z-index: 1;
           }
           
           .form h1
           {
          
               color:#000;
               font-size:calc(1.5rem + 3vw));
           }
           .form .inputBox
           {
               width: 100%;
               margin-top: 5%;
               margin-right: 5%;
           
           }
           .form .inputBox input
           {
               width:100%;
               background: transparent;
               border:none;
               border-bottom: 2px solid #fff;
               outline:none;
               font-size: 20px;
               font-family: sans-serif;
               
           }
           
           .form p
           {
               font-size: 20px;
               color:black;
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
        
           
           @media screen and (max-width: 360px) {
               
                .main{
                position:relative;
                width:90%;
                min-height: 320px;
                background: rgba(255,255,255,0.05);
                box-shadow: 0 5px 15px rgba(0,0,0,1);
              
                margin-top: 5%;
             color:black;
                
                  
      
            }
            
            
            .form{
             
               position:absolute;
               width:70%;
               height:60%;
               margin-top:5%;
               margin-left: 16%;
         
           ;
              box-sizing: border-box;
              z-index: 1;
           }
           
            .form .inputBox
           {
               width: 100%;
               margin-top: 5%;
               margin-right: 5%;
           
           }
           
           .form .inputBox input
           {
               width:100%;
               background: transparent;
               border:none;
               border-bottom: 2px solid #fff;
               outline:none;
               font-size: 15px;
               font-family: sans-serif;
               
           }
           .form p
           {
                 font-size: 15px;
           }
  
  }
  
  
  @media screen and (max-width: 780px) {
  .main{
                position:relative;
                width:90%;
                min-height: 320px;
                background: rgba(255,255,255,0.05);
                box-shadow: 0 5px 15px rgba(0,0,0,1);
              
                margin-top: 5%;
          
                
                  
      
            }
            
            
            .form{
             
               position:absolute;
               width:70%;
               height:60%;
               margin-top:5%;
               margin-left: 16%;
         
           ;
              box-sizing: border-box;
              z-index: 1;
           }
           
            .form .inputBox
           {
               width: 100%;
               margin-top: 5%;
               margin-right: 5%;
           
           }
           
           .form .inputBox input
           {
               width:100%;
               background: transparent;
               border:none;
               border-bottom: 2px solid #fff;
               outline:none;
               font-size: 15px;
               font-family: sans-serif;
               
           }
           .form .p
           {
                 font-size: 15px;
                    color:black;
           }
  
}
           
        
          </style>  
         
    </head>
    <body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
               
              
    <center>
        <div class="main">
            <div class="form">
                
                
                <h1>Login Form</h1>
                
                
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
                    <br><br>
                    <a href="forget.jsp"> <p>Forget Password ?</p></a>
                </form>
     
            </div>
            
        </div>
    </center>
        
        
    </body>
</html>
