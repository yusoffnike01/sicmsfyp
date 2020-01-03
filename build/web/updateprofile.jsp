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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            body
            {
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

          

            .main #id
            {
                float:left;
            }
            
            form
            {
                background-color:white;
                padding: 20px;
                width: 450px;
                margin: 50px auto;
                border: 2px solid #2481f2;
  border-radius: 8px;
            }
            
            input[type=text]
            {
                width:280px;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            
            input[type=submit]
            {
                width:150px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            
             input[type=email]
            {
                 width:280px;
                padding:8px;
                margin:5px 0;
                border-radius: 5px;
                border:1px solid #33cce6;
                
                
            }
            input[type=submit]:hover
            {
                background-color: whitesmoke;
            }
           
              
            input[type=button]
            {
                 width:100px;
                height:40px;
                border-radius:5px;
                background-color: #4880B0;
                border:1px solid #286090;
                
            }
            input[type=button]:hover
            {
                background-color: whitesmoke;
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


        %>

        <div class="main">
            <form name="myForm" method="post" id="register" action="updateprofile2.jsp" enctype="multipart/form-data" onsubmit="validate()">

                <table>

                    <input type="hidden" name="username" value="<%=e.getUsername()%>">
                     <input type="hidden" name="password" value="<%=e.getPasword() %>">

                    <tr>
                        <td>
                            <label>Name:</label>
                        </td>
                        <td>
                            <input type="text" name="name"  size="40" value="<%=e.getName()%>">
                        </td>

                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="hidden" name="usernamemanager" size="40" value="<%=e.getUsernamemanager() %>"
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Email:</label>
                        </td>
                        <td> 
                            <input type="email" name="email" size="40" value="<%=e.getEmail()  %>"
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Number:</label>
                        </td>
                        <td> 
                            <input type="text" name="number" size="40" value="<%=e.getNumber()  %>"
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
                            <input type="text" name="state" value="<%=e.getState()%>">
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label>Choose your profile picture :</label>
                        </td>
                        <td>
                            <input type="file" name="image"><br><br>
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <a href="profile.jsp" >    <input type="button" name="back"  value="Back" id="sub"></a>
                        </td>

                        <td>
                            <input type="submit" name="submit"  value="Edit1">
                        </td>
                    </tr>




                </table>
            </form>
        </div>

    </body>
</html>
