

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>



<!DOCTYPE html>
<html lang="en">
    <!DOCTYPE html>
    
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Management</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
            <script src="https://cdn.zingchart.com/zingchart.min.js"></script>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
                input[type=text]
                {
                    width:67%;


                }

                input[type=number]
                {


                }

                input[type=password]
                {
                    width:67%;

                }
                #design input[type=text]
                {
                    border:none;
                }
                input[type=submit]
                {

                    width:80%;
                   box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#7892c2;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:19px;
	padding:12px 37px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
                }
                
                input[type=submit]:hover
                {
                    
                    background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
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

                .modal fade{
                    width:100%;
                }
                .navbar-nav
                {

                    margin-left:420px;

                }
                #profileid
                {

                    width:12%;
                    height:45px;
                    border-radius: 50%;
                    border:2px solid #34495e;

                    box-sizing: border-box;


                }


                .tab {
                    overflow: hidden;
                    border: 1px solid #ccc;
                    background-color: #f1f1f1;
                    width:60%;
                    margin-left: 20%;
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


                .tabcontent {
                    display: none;
                    padding: 6px 12px;
                    border: 1px solid #ccc;
                    border-top: none;
                    width:60%;
                    margin-left: 20%;
                    background-color: white;
                }

                .required
                {
                    color:red;

                }

                @media(min-width:1440px)
                {
                    #profileid
                    {

                        width:14.1%;
                        height:45px;
                        border-radius: 50%;
                        border:2px solid #34495e;

                        box-sizing: border-box;


                    }
                }

                .dropbtn {


                    padding: 16px;
                    font-size: 16px;
                    border: none;
                    cursor: pointer;
                }
                .dropdown {
                    position: relative;
                    display: inline-block;
                }
                .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #f9f9f9;
                    min-width: 160px;
                    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                    z-index: 1;
                }

                .dropdown-content a {
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                }

                .dropdown-content a:hover {background-color: #f1f1f1}

                .dropdown:hover .dropdown-content {
                    display: block;
                }

                .dropdown:hover .dropbtn {
                    background-color: #3e8e41;
                }

                @media  (max-width: 768px) {

                    .content-table
                    {
                        border-collapse: collapse;
                        margin:25px 0;


                        border-radius: 5px 5px 0 0;

                    }
                    .content-table th,.content-table td{

                        padding: 10px 13px;
                        font-size:12px;

                    }
                    . content-table 
                    {
                        content-table table-responsive;
                    }


                    .navbar-nav
                    {

                        margin-left:4%;

                    }

                    .tab {
                        overflow: hidden;
                        border: 1px solid #ccc;
                        background-color: #f1f1f1;
                        width:95%;
                        margin-left: 3%;
                        margin-top:5%;
                        ;

                    }

                    .tab p
                    {
                        font-size: 4vw;
                    }

                    /* Style the buttons inside the tab */
                    .tab button {
                        background-color: inherit;
                        float: left;
                        border: none;
                        outline: none;
                        cursor: pointer;
                        padding: 8px 10px;
                        transition: 0.3s;
                        font-size: 12px;
                    }

                    /* Change background color of buttons on hover */
                    .tab button:hover {
                        background-color: #ddd;
                    }

                    /* Create an active/current tablink class */
                    .tab button.active {
                        background-color: #ccc;
                    }

                    .tabcontent {
                        display: none;
                        padding: 6px 12px;
                        border: 1px solid #ccc;
                        border-top: none;
                        width:95%;
                        margin-left: 3%;
                        background-color: white;
                    }

                    .tabcontent h3
                    {
                        font-size:    4.5vw;
                    }

                    .tabcontent p
                    {
                        font-size: 3vw;

                    }
                    #profileid
                    {

                        width:18%;
                        height:40px;
                        border-radius: 50%;
                        border:2px solid #34495e;

                        box-sizing: border-box;


                    }


                }


            </style>

            <script>
                function togglebar()
                {
                    document.getElementById("bar").classList.toggle('active');
                }

                $(document).ready(function () {
                    function disablePrev() {
                        window.history.forward()
                    }
                    window.onload = disablePrev();
                    window.onpageshow = function (evt) {
                        if (evt.persisted)
                            disableBack()
                    }
                });

                function myfunctional()
                {
                <%
                              String usernamemanager = request.getParameter("usernamanager");
                              int status = UserDao.deletemessage(usernamemanager);
                              if (status > 0) {
                                  response.sendRedirect("notificationmanager.jsp");
                              }


                %>
                }



            </script>
        </head>



        <body>

            <%          manager e = UserDao.getmanagerBySession((String) session.getAttribute("user"));

            %>

            <%            manager obj2 = UserDao.getmanagerBySession((String) session.getAttribute("user"));

            %>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3">
                <div class="container-fluid">
                    <a href="#"class="navbar-brand mr-3"><img src="<%=e.getBase64Image()%>"  id="profileid" > Contractor</a>

                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav">


                        </div>
                        <div class="navbar-nav ml-auto">

                            <div class="dropdown">
                                <a href="page1.jsp"class="nav-item nav-link">Dashboard</a>
                                <div class="dropdown-content">
                                   
                                </div>
                            </div>

                            <div class="dropdown">
                                <a href="reportmanager.jsp" class="nav-item nav-link">Monitor</a>
                                <div class="dropdown-content">
                                    
                                </div>

                            </div>      






                            <a href="notificationmanager.jsp" class="nav-item nav-link">Notification</a>
                            <a href="register.jsp" class="nav-item nav-link active">Management</a>
                            <a href="profilemanager.jsp" class="nav-item nav-link">profile</a>
                            <a href="index.jsp" class="nav-item nav-link">LogOut</a>
                        </div>
                    </div>
                </div>    
            </nav>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'register')"> <p> Register Cleaner </p></button>
                <button class="tablinks" onclick="openCity(event, 'list')"><p>List Cleaner  </p></button>
                <button class="tablinks" onclick="openCity(event, 'history')"><p>History  </p></button>
            </div>


            <div id="register" class="tabcontent" >

                
                    <h3>Cleaner details:</h3>


                    <form action="updateprofile2.jsp"  enctype="multipart/form-data" method="POST" autocomplete="off">
<div class="table-wrapper-scroll-y my-custom-scrollbar">
                        <table>
                            <tr>
                                <td style="width: 40%;">
                                    <p>              Username<span class="required">*</span>: </P>
                                </td>
                                <td>
                                    <input type="text" name="username" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>        Password <span class="required">*</span>: </P>
                                </td>
                                <td>
                                    <input type="password" name="password" required="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>             Ic <span class="required">*</span>: </P>
                                </td>
                                <td>
                                    <input type="text" name="ic" required>
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
                                    <p>                      Name<span class="required">*</span>: </p>
                                </td>

                                <td>
                                    <input type="text" name="name" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>        Email<span class="required">*</span>: <p>
                                </td>

                                <td>
                                    <input type="email" name="email">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>          No.Phone: </p>
                                </td>

                                <td>
                                    <input type="text" name="number">
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <p>            Age: </p>
                                </td>
                                <td>
                                    <input type="text" name="age">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>      National: </p>
                                </td>
                                <td>
                                   <select name="nation" >
                       <option value="Melayu">Melayu</option>
                       <option value="Chinese">Chinese</option>
                       <option value="Indian">Indian</option>
                       <option value="other">Others</option>
                   </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>               Address: </p>
                                </td>
                                <td>
                                    <input type="text" name="address">
                                </td>

                            </tr>

                            <tr>

                                <td>
                                    <p>                           City:  </p>
                                </td>

                                <td>
                                    <input type="text" name="city">
                                </td>
                            </tr>
                            <td>
                                <p> State:</p>       
                            </td>
                            <td>
                                <select name="state">
                                    <option  selected>...</option>
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

                            
                            <tr>
                                <td>
                                    <p>      Image: </p>
                                </td>
                                <td>
                                    <input type="file" name="image">
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="Submit" value="register">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>



            <div id="list" class="tabcontent">



                <h3>List of cleaner</h3>
                <center>
                    <div class="table-responsive">   

                        <form action="delete.jsp" method="POST" id="design">
                            <table class=" content-table">

                                <thead>
                                    <tr>
                                        <th>Username</th>

                                        <th>Name</th>
                                        <th>IC</th>
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
                                        <td> <input style="border:none" type="" name="username"value="<%=obj.getUsername()%>" readonly size="7" > </td>

                                        <td><input  style="border:none" type=""name="name" value="<%=obj.getName()%>" readonly ></td>
                                        <td><input  style="border:none"type="" name="ic"value="<%=obj.getIc()%>" readonly size="10"></td>
                                        <td><input  style="border:none" type="" name="email"value="<%=obj.getEmail()%>"readonly></td>
                                        <td><input  style="border:none" type="" name="number" value="<%=obj.getNumber()%>" readonly size="12"></td>
                                        <td><input  style="border:none" type="" name="age"value="<%=obj.getAge()%>" readonly size="1"></td>
                                        <td><input  style="border:none" type="" name="address"value="<%=obj.getAddress()%>" readonly></td>
                                        <td><input style="border:none" type="" name="city" value="<%=obj.getCity()%>"readonly size="14"></td>
                                        <td><input style="border:none" type="" name="state"value="<%=obj.getState()%>"readonly size="14"></td>
                                        <td>  
                                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getUsername()%>">Edit</button></td>

                                        <td> <button type="submit" onclick="return confirm('Are you sure to delete?')"class="btn btn-info" name="submit"  value="Delete">Delete</button></td>


                                    </tr>

                                    <%}
                                    %>


                            </table> 

                        </form>          
                        <%
                            List<User> list6 = UserDao.getAllUser1((String) session.getAttribute("user"));

                            for (User obj1 : list6) {
                        %>

                        <div id="myModal<%=obj1.getUsername()%>" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Update</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form name="myForm" method="POST"  action="updateprofile2.jsp" enctype="multipart/form-data" >
                                            <table>

                                                <input type="hidden" name="username" value="<%=obj1.getUsername()%>">
                                                <input type="hidden" name="password" value="<%=obj1.getPasword()%>">

                                                <tr>
                                                    <td>

                                                    </td>
                                                    <td>
                                                        <input type="hidden" name="usernamemanager" size="40" value="<%=obj1.getUsernamemanager()%>" 
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Name:</label>
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
                                                        <input type="email" name="email" size="20.67" value="<%=obj1.getEmail()%>"
                                                    </td>

                                                </tr>

                                                <tr>
                                                    <td>
                                                        <label>Number:</label>
                                                    </td>
                                                    <td> 
                                                        <input type="text" name="number" size="40" value="<%=obj1.getNumber()%>"
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Age:</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" name="age" value="<%=obj1.getAge()%>"
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
                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=e.getUsername()%>">Picture</button><br><br>
                                                    </td>

                                                </tr>

                                                <tr>



                                                    <td>
                                                        <input type="submit" name="Submit"  value="Edit">
                                                    </td>
                                                </tr>




                                            </table>
                                        </form>

                                    </div>	
                                </div>
                            </div>
                        </div>

                        <div id="myModal<%=e.getUsername()%>" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Update</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form name="myForm"  action="delete.jsp" enctype="multipart/form-data" method="post" id="register"   onsubmit="validate()">
                                            <input type="hidden"   name="username" value="<%=e.getUsername()%>">
                                            <input type="file" name="image">


                                            <input type="submit" name="Submit" value="picturecc">
                                        </form>



                                    </div>
                                </div>
                            </div>
                        </div>

                        <% }
                        %>

                    </div>   
                </center>
            </tbody>










        </div>
        <div id="history" class="tabcontent">
            <div class="table-responsive">   
                <form action="register.jsp" method="POST">

                    <input type="text" class="form-control" name="search" placeholder="Search here.." >

                </form>
                <table class=" content-table">

                    <thead>
                        <tr>
                            <th>Username</th>

                            <th>Name</th>
                            <th>IC</th>
                            <th>Email</th>

                            <th>Age</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>State</th>






                        </tr>
                    </thead>
                    <%
                        String search = request.getParameter("search");
System.out.println("search"+search);
                        List<User> list10 = UserDao.getsearchcleaner(search);

                        for (User obj : list10) {
                    %>
                    <tr>
                        <td><%=obj.getUsername()%></td>

                        <td><%=obj.getName()%></td>
                        <td><%=obj.getIc()%></td>
                        <td><%=obj.getEmail()%></td>

                        <td><%=obj.getAge()%></td>
                        <td><%=obj.getAddress()%></td>
                        <td><%=obj.getCity()%></td>
                        <td><%=obj.getState()%></td>
                    </tr>
                    <%}
                    %>
                </table>
            </div>
            <div id="result"></div>
            <script>
                $(document).ready(function () {
                    $('#search').keyup(function () {
                        var txt = $(this).val();
                        if (txt != '')
                        {

                        } else
                        {
                            $('#result').html();
                            $.ajax({
                                url: "search.jsp",
                                method: "post",
                                data: {search: txt},
                                dataType: "text",
                                success: function (data)
                                {
                                    $('#result').html(data);
                                }
                            })
                        }
                    });
                });

            </script>

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
