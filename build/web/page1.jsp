<%-- 
    Document   : page1
    Created on : Oct 10, 2019, 11:57:55 PM
    Author     : user
--%>

<%@page import="fyp.information"%>

<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>
<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>manager</title>
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
            
             .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
                width:60%;
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
                width:60%;
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
                padding:10px o;
                border-radius: 15px;
            }

            input[type=button]:hover
            {
                color:#fff;
                background-color: #A8BEF1;
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
           
            #kotak
            {
                background-color: white;
                width:50%;
                height: 620px;
               border:2px solid red;
                       margin-left: 24%;
            }
            
            #kotak .in
            { 
                
                margin-left: 5%;
                width:90%;
          
             padding-top: 2%;
                background-color: white;
                height:600px;
                
                background-image: url("8ZoAeMh.jpg");
            
                
            }
         
            
         
            #buttonEdit {
    float: right;
    margin-right: 50px;
      background-color: #4CAF50;
    border-radius: 50px;
    color: white;
    font-size: 17px;
    border: 1px solid red;
    cursor: pointer;
    width:auto;
}

#buttonEdit:hover {
    background-color: blue;
}



.main{
    
    background-color: whitesmoke;
margin-left: 20%;
    margin-top: 5%;
    width:60%;
    height:auto;
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
    background-color:#1FF6CB;
    color:#ffffff;
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
            
                .btn {
                background-color: #F9384C;
                border: none;
                color: white;
                padding: 8px 12px;
                font-size: 16px;
                cursor: pointer;
            }
#updateinformation th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
 
  
}
            #updateinformation td, #updateinformation th {
  border: 1px solid #ddd;
  padding: 8px;
}

table{
    
     border-collapse: collapse;
    width:100%;
}

        

  .container {
  padding: 16px;
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
        
          <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">
                
                <span></span>
                <span></span>
                <span></span>
            </div>
          <ul>
               <% 
                 
                manager e = UserDao.getmanagerBySession((String)session.getAttribute("user"));
       
        %>
            
              <li>
                  <img src="<%=e.getBase64Image() %>"  id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw;"> <%=e.getUsername() %> <br> Contractor</P>
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
            <button class="tablinks" onclick="openCity(event, 'register')">Register Device</button>
            <button class="tablinks" onclick="openCity(event, 'table')">List Device</button>
             <button class="tablinks" onclick="openCity(event, 'update')">Update Level</button>

        </div>

        <div id="register" class="tabcontent">
            <div class="main">
                <br>
                <h3>Registration Form</h3>
                <br>
                <form action=""   method="POST">

                    <table>
                        <tr>
                            <td>
                                Name :
                            </td>
                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Device ID:
                            </td>
                            <td>
                                <input type="password" name="device">
                            </td>
                        </tr>
                        
                            <td>
                                <input type="submit" name="submit1" value="submit">
                            </td>
                        </tr>
                    </table>
                </form>

            </div>

        </div>

        <div id="table" class="tabcontent">
            <h3>The record of quantity of soap</h3>
            <center>
               <table class="content-table">
                <thead>
            <tr>
                <th>Device ID</th>
                <th>Distance</th>
                <th>LongDate</th>
                
              <th>location</th>


            </tr>
            </thead>
               <%
              List<result> list = UserDao.getresult();

            for (result obj : list) {



            %>
            
            <tbody>
            <center>
               <tr>
                <td> <%=obj.getDeviceid() %></td>
                <td><%=obj.getDistance() %></td>

                <td><%=obj.getLogdate()%></td>

               
            </tr>
            
            </tbody>

 <%}%>




        </table>
            </center>
                       

        </div>


                   <div id="update" class="tabcontent">
                       
                       
                       <table id="updateinformation">
                           
                           <th>Distance</th>
                           <th>Details</th>
                           <th>Action</th>
                           
                      
                   <%    
                       List<information> list4=UserDao.getdisplayinformation();
                        

                       
    for (information obj : list4) {

            
             %>
                               
                              <tr>

                        <td><%=obj.getDistance()%></td>
                        <td> <%=obj.getDetail()%></td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getId() %>">Edit</button></td>
                                
                        
                            
                        
                        
                    


                
                    </tr>   
                    	<div id="myModal<%=obj.getId() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                                        <form action="testprocess.jsp" method="POST">
                                            <input type="hidden" name="id" value="<%=obj.getId() %>">
                                            
                                            <input type="text" name="distance" value="<%=obj.getDistance() %>">
                                              <input type="hidden" name="detail" value="<%=obj.getDetail() %>">
                                                <input type="submit" name="Submit"  value="Edit Profile">
                                        </form>
						
						
						
				    </div>
				</div>
			</div>
		</div>
                             
   <% }%>
                   


                                 
                                 </table>   
                                 
                         
                                     
                      
                                           
        </div>
                     
              
 </center>
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
