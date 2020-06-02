<%-- 
    Document   : forget
    Created on : Aug 11, 2019, 12:11:06 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
        
        <style>
            body{
                 margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                
                font-family: sans-serif;
            }
            .container
            {
                margin-top: 8%;
            }
      
            
            @media screen and (max-width: 360px) {
                .container
                {
                    margin-top: 10%;
                
                }
               
            }
            
            @media screen and (max-width: 780px)
            {
                 .container
                {
                    margin-top: 10%;
                
                }
               
            }
        </style>
    </head>
    <body>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
    
                    <form id="register-form" action="processforget2.jsp" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input id="email" name="email" placeholder="email address" class="form-control"  type="email">
                        </div>
                           <%
            String ab="abcdefghijkmlopqrstuvwxz";
            Random r= new Random();
            
            int size=ab.length();
            for(int i=0;i<8;i++)
            {
              %>
              
       <%       
              
              
            }
int a=(int)(Math.random()*7)+1;
%>
                          
                          
                           <div class="input-group">
                         
                          <input id="email" name="pass" placeholder="email address" class="form-control"  type="hidden" value="<%=ab.charAt(r.nextInt(size))+"12@4#"+a%>">
                        </div>
                      </div>
                      <div class="form-group">
                        <input name="Submit" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</body>
</html>                            