<%-- 
    Document   : register
    Created on : Oct 22, 2019, 10:24:10 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>
<%@page import="fyp.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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

            /* Style the tab */
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
                width:71.8%;
                margin-left: 17%;
                margin-top:5%;
            }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
                width:71.7%;
                margin-left: 17%;
                background-color: white;
            }

            input[type=text]
            {
                width:67%;

            }

            input[type=number]
            {
                width:67%;

            }

            input[type=password]
            {
                width:67%;

            }

            input[type=submit]
            {
                border:none;
                width:80%;
                background:white;
                font-size: 16px;
                line-height: 25px;
                padding:10px ;
                border-radius: 15px;
            }

            input[type=button]:hover
            {
                color:#fff;
                background-color: #A8BEF1;
            }

            .content-table
            {
                border-collapse: collapse;
                margin:25px 0;
                font-size: 0.9em;
                width: 70%;
                border-radius: 5px 5px 0 0;

            }

            .content-table thead tr
            {
                background-color:#25f0f7;
                color:black;
                text-align:left;
                font-weight:bold;

            }

            .content-table th,.content-table td{

                padding: 10px 13px;


            }

            .content-table tbody tr
            {
                border-bottom: 1px solid #EE83F2;
            }




            .content-table tbody tr:last-of-type
            {
                border-bottom: 2px solid #1FF6CB;
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

            .btn {
                background-color: #F9384C;
                border: none;
                color: white;
                padding: 12px 16px;
                font-size: 16px;
                cursor: pointer;
            }

            /* Darker background on mouse-over */
            .btn:hover {
                background-color: #FF0000;
            }
            
            
             
            .modal fade{
                width:100%;
            }
        </style>


        <script>
            function togglebar()
            {
                document.getElementById("bar").classList.toggle('active');
            }

            $(document).ready(function () {
                function disablePrev() {
                    window.history.forward();
                }
                window.onload = disablePrev();
                window.onpageshow = function (evt) {
                    if (evt.persisted)
                        disableBack();
                };
            });

           

            

          
                
                </script>

    </head>
    <body>
        <%

            manager e = UserDao.getmanagerBySession((String) session.getAttribute("user"));

        %>
        <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">

                <span></span>
                <span></span>
                <span></span>
            </div>
            <ul>


                <li>
                    <img src="<%=e.getBase64Image()%>"  id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw;"> <%=e.getUsername()%> <br> Contractor</P>
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
                </a>
            </ul>
        </div>


        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'register')">Register Cleaner</button>
            <button class="tablinks" onclick="openCity(event, 'list')">List Cleaner</button>

        </div>

        <div id="register" class="tabcontent">
            <div class="main">
                <br>
                <h3>Registration Form</h3>
                <br>
                <form action="updateprofile2.jsp"  enctype="multipart/form-data" method="POST" autocomplete="off">

                    <table>
                        <tr>
                            <td>
                                Username :
                            </td>
                            <td>
                                <input type="text" name="username">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password:
                            </td>
                            <td>
                                <input type="password" name="password">
                            </td>
                        </tr>
                        <tr>

                            <td>

                            </td>
                            <td>
                                <input type="hidden" name="usernamemanager" value="<%=e.getUsername()%>">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Name:
                            </td>

                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email:
                            </td>

                            <td>
                                <input type="email" name="email">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Number:
                            </td>

                            <td>
                                <input type="text" name="number">
                            </td>
                        </tr>
                        <tr>

                            <td>
                                Age:
                            </td>
                            <td>
                                <input type="text" name="age">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address:
                            </td>
                            <td>
                                <input type="text" name="address">
                            </td>

                        </tr>

                        <tr>

                            <td>
                                City:
                            </td>

                            <td>
                                <input type="text" name="city">
                            </td>
                        </tr>
                        <td>
                            State:
                        </td>
                        <td>
                            <input typ="text" name="state">
                        </td>
                        <tr>
                            <td>
                                Image:
                            </td>
                            <td>
                                <input type="file" name="image">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" value="register">
                            </td>
                        </tr>
                    </table>
                </form>

            </div>

        </div>

        <div id="list" class="tabcontent">
            <h3>List of cleaner</h3>
            <center>
               
                    <table class="content-table">
                       
                        <thead>
                            <tr>
                                <th>Username</th>

                                <th>Name</th>
                                <th>Email</th>
                                <th>Number</th>
                                <th>Age</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>State</th>
                                <th colspan="2">Action</th>





                            </tr>
                        </thead>
                      
  <%

                            List<User> list = UserDao.getAllUser1((String) session.getAttribute("user"));

                            for (User obj : list) {
                        %>
                        <tbody>
                        
                            <tr>
                                <td><input style="border:none" type="text" name="username" value="<%=obj.getUsername()%>"> </td>
                                <td><%=obj.getName()%></td>
                                <td><%=obj.getEmail()%></td>
                                <td><%=obj.getNumber()%></td>
                                <td><%=obj.getAge()%></td>
                                <td><%=obj.getAddress()%></td>
                                <td> <%=obj.getCity()%></td>
                                <td><%=obj.getState()%></td>
                                <td>  
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getUsername() %>">Edit</button></td>
                                
                                <td> <a href="delete.jsp?username=<%=obj.getUsername()  %>" onclick="return confirm('Are you sure to delete?')"><button  type="button" onclick='myfunctional()'  class="btn"><i class="fa fa-trash"></i></button></a></td>
                            </tr>
                            
                              <%}
                            %>

                    </table> 
                            
                                  <%

                            List<User> list6 = UserDao.getAllUser1((String) session.getAttribute("user"));

                            for (User obj1 : list6) {
                        %>
                                    
                            <div id="myModal<%=obj1.getUsername() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                                         <form name="myForm" method="POST" id="register" action="updateprofile2.jsp" enctype="multipart/form-data" >
                                       <table>

                    <input type="hidden" name="username" value="<%=obj1.getUsername() %>">
                     <input type="hidden" name="password" value="<%=obj1.getPasword() %>">

                    <tr>
                        <td>
                            <label>Name:</label>
                        </td>
                        <td>
                          <input type="hidden" name="usernamemanager" size="40" value="<%=obj1.getUsernamemanager() %>" 
                        </td>

                    </tr>
                    <tr>
                        <td>
                         
                        </td>
                        <td>
                         <input type="text" name="name"  size="40" value="<%=obj1.getName()%>">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Email:</label>
                        </td>
                        <td> 
                            <input type="email" name="email" size="20.67" value="<%=obj1.getEmail()  %>"
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Number:</label>
                        </td>
                        <td> 
                            <input type="text" name="number" size="40" value="<%=obj1.getNumber()  %>"
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <label>Age:</label>
                        </td>
                        <td>
                            <input type="text" name="age" value="<%=obj1.getAge()  %>"
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Address:</label>
                        </td>
                        <td>
                            <input type="text" name="address" value="<%=obj1.getAddress()%>">
                        </td>

                    </tr>


                    <tr>
                        <td>
                            <label>City:</label>
                        </td>
                        <td>
                            <input type="text" name="city" value="<%=obj1.getCity()%>">
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>State:</label>
                        </td>
                        <td>
                            <input type="text" name="state" value="<%=obj1.getState()%>">
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
                            <input type="submit" name="submit"  value="Edit">
                        </td>
                    </tr>




                </table>
                                         </form>
                        
                                    </div>	
                            </div>
                        </div>
                            </div>
			
<% }
    %>
                        </center>
                            </tbody>


                          


                    
                
    


        </div>



                <script>
                function openCity(evt, cityName) {
                                                        var i, tabcontent, tablinks;
                                                        tabcontent = document.getElementsByClassName("tabcontent");
                                                        for (i = 0; i < tabcontent.length; i++) {
                                                                tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                                                                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
            }
            </script>

</body>
</html> 
