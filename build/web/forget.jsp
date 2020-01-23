<%-- 
    Document   : forget
    Created on : Aug 11, 2019, 12:11:06 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
      <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        
        <style>
            body{
                 margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                
                font-family: sans-serif;
            }
           .form
            {
                background-color:white;
            margin-top: 4%;
            margin-left: 25%;
               min-height: 300px;

                width: 50%;
              
                border: 2px solid #2481f2;
  border-radius: 8px;
            }
             input[type=text]
            {
                width:60%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(2vw+30px);
                
            }
            
              input[type=submit]
            {
                width:50%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            .id
            {
                margin-top: 10%;
               border: 2px solid #2481f2;
  border-radius: 8px;
                width:80%;
                background-color:white;
           
               min-height: 300px;

            }
            
            @media screen and (max-width: 360px) {
  .container {
    width: 100%;
  }
  .id
  {
     margin-top: 15%;
               border: 2px solid #2481f2;
  border-radius: 8px;
                width:100%;
                background-color:white;
           
               min-height: 300px;
  }
  
    input[type=submit]
            {
                width:30%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                font-size: 12px;
                
            }
  
      input[type=text]
            {
                width:80%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(2vw+30px);
                
            }
            .id p{
                font-size: 15px;
            }
            }
            
            
            @media screen and (max-width: 780px)
            {
                .container {
                    
                    margin-top: 15%;
    width: 100%;
  }
  .id
  {
      margin-top: 10%;
               border: 2px solid #2481f2;
  border-radius: 8px;
                width:100%;
                background-color:white;
           
               min-height: 300px;
  }
  
    input[type=submit]
            {
                width:30%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                font-size: 12px;
                
            }
  
      input[type=text]
            {
                width:80%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                font-size: calc(2vw+30px);
                
            }
            .id p{
                font-size: 15px;
            }
            }
        </style>
    </head>
    <body>
      
<div class="container">
   
    <center>
            <form  name="myForm" action="processforget.jsp" method="POST" id="register">
          <table class="id">
                <tr>
                    
                    <td>
                        <p>           username:</p>
                        
                    </td>
                    <td>
                            <input type="text" name="username">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <p>         favourite: </p>
                    </td>
                    <td>
                        <input type="text" name="favourite">
                    </td>
                </tr>
        
                
                <tr>
                    <td>
                        
                        
                    </td>
                    <td>
                          <input type="radio" name="role" value="CO">  Contractor 
                        <input type="radio" name="role" value="CL">  Cleaner 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                                <input type="submit" name="submit" value="Submit">
                        
                    </td>
                
                </tr>

        
            </table>
            </form>
    </center>
   
  
</div>
</body>
</html>                            