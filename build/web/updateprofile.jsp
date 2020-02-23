<%-- 
    Document   : updateprofile
    Created on : Jul 13, 2019, 10:57:06 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.User" %>
<%@page import="fyp.UserDao"%>

<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>update</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            body
            {
                margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                     
                font-family: sans-serif;

            }

          

            .main #id
            {
                float:left;
            }
            
            form
            {
                  background-color:white;
                padding: 1%;
                width: 40%;
                margin: 50px auto;
                border: 2px solid #2481f2;
  border-radius: 8px;
            }
             input[type=email]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            
            input[type=submit]
            {
                width:40%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            input[type=submit]:hover
            {
                background-color: whitesmoke;
            }
           
              
            input[type=button]
            {
                 width:50%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                height:40px;

                
            }
             input[type=text]
            {
                width:100%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            input[type=button]:hover
            {
                background-color: whitesmoke;
            }
            
            
            @media  (max-width: 768px) 
            {
                 .main #id
            {
                float:left;
            }
            
            form
            {
                 background-color:white;
                padding: 1%;
                width: 100%;
                margin: 50px auto;
                border: 2px solid #2481f2;
  border-radius: 8px;
            }
                 input[type=button]
            {
                 width:80%;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
                  input[type=text]
            {
                width:80%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            
                 input[type=email]
            {
                width:80%;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            
                
            }
            
            
        </style>
        <script type="text/javascript">
            function validate()
            {
                var name = document.myForm.name.value;
                if (name == null || name == "")
                {
                    alert("Please enter the Name");

                    return false;
                 
                }

  var email = document.myForm.email.value;
                if (email == null || email == "")
                {
                    alert("Please enter the Name");

                    return false;
                }
                 
               var x=document.forms["myForm"]["age"].value;
                    if (isNaN(x)) 
                     {
                         alert("Must input numbers");
                      return false;
                      
                      
                       }
                       
                var address = document.myForm.address.value;
                if (address == null || address == "")
                {
                    alert("Please enter the Address");

                    return false;
                }
                var city = document.myForm.city.value;
                if (city == null || city == "")
                {
                    alert("Please enter the City");

                    return false;
                }

                var state = document.myForm.state.value;
                if (state == null || state == "")
                {
                    alert("Please enter the State");

                    return false;
                }
            }

        </script>

    </head>
    <body>
        <%

        %>
        <%            String name = request.getParameter("username");
            User e = UserDao.getUserBySession(name);
            User a=UserDao.getforgetcleaner(name);
             

        %>

        <div class="main">
            <form name="myForm" method="post" id="register" action="updateprofile2.jsp" enctype="multipart/form-data" onsubmit="validate()">

                <table>

                    <input type="hidden" name="username" value="<%=e.getUsername()%>">
                     <input type="hidden" name="password" value="<%=e.getPasword() %>">

                    <tr>
                        <td>
                           
                        </td>
                        <td>
                            <input type="hidden" name="name"   value="<%=e.getName()%>">
                        </td>

                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="hidden" name="usernamemanager"  value="<%=e.getUsernamemanager() %>"
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Email:</label>
                        </td>
                        <td> 
                            <input type="email" name="email"  value="<%=e.getEmail()  %>"
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Number:</label>
                        </td>
                        <td> 
                            <input type="text" name="number"  value="<%=e.getNumber()  %>"
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <label>Age:</label>
                        </td>
                        <td>
                            <input type="text" name="age" value="<%=e.getAge() %>">
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Address:</label>
                        </td>
                        <td>
                            <input type="text" name="address" value="<%=e.getAddress()%>">
                        </td>

                    </tr>


                    <tr>
                        <td>
                            <label>City:</label>
                        </td>
                        <td>
                            <input type="text" name="city" value="<%=e.getCity()%>">
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>State:</label>
                        </td>
                        <td>
                            <select name="state">
                                 <option  selected><%=e.getState() %></option>
                            <option>KEDAH</option>
  <option>KELANTAN</option>
  <option>MELAKA</option>
  <option>NEGERI SEMBILAN</option>
   <option>PAHANG</option>
   <option>PERAK</option>
    <option>PERLIS</option>
     <option>PULAU PINANG</option>
      <option>SABAH</option>
       <option>SARAWAK</option>
        <option>TERENGGANU</option>
         <option>W.P(KUALA LUMPUR)</option>
          <option>W.P(LABUAN)</option>
           <option>W.P(PUTRAJAYA)</option>
                                
                                
                            </select>
                        </td>

                    </tr>
                    
                     <tr>
                        <td>
                            <label>Secure:</label>
                        </td>
                        <td>
                            <input type="text" name="favourite" value="<%=a.getFavourite() %>">
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label>Choose your profile picture :</label>
                        </td>
                        <td>
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=e.getUsername() %>">Picture</button><br><br>
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <a href="profile.jsp" >    <input type="button" name="back"  value="Back" id="sub"></a>
                        </td>

                        <td>
                            <input type="submit" name="Submit"  value="Edit1">
                        </td>
                    </tr>




                </table>
            </form>
        </div>
<div id="myModal<%=e.getUsername() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                               <form name="myForm"  action="updateprofile2.jsp" enctype="multipart/form-data" method="post" id="register"   onsubmit="validate()">
                                   <table> 
                                       <tr>
                                           <td>
                                   <input type="hidden"   name="username" value="<%=e.getUsername() %>">
                                           </td>
                                   </tr>
                                   <tr>
                                       
                                       <td>
                                            <input type="file" name="image">

                                       </td>
                                   </tr>
                                            
                                   <tr>
                                       <td>
                                            <input type="submit" name="Submit" value="picture">
                                       </td>
                                   </tr>
                                           
                                   </table>
                                        </form>
						
						
						
				    </div>
				</div>
			</div>
		</div>
    </body>
</html>
