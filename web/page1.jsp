<%-- 
    Document   : page1
    Created on : Oct 10, 2019, 11:57:55 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.soap_info"%>
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
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
     * {
  box-sizing: border-box;
}
body
{
     margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                
                font-family: sans-serif;
}

    #profileid
            {
                
            width:8%;
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
     font-size:1em;
    
         
   
}

.content-table tbody tr
{
    border-bottom: 1px solid #EE83F2;
}




.content-table tbody tr:last-of-type
{
    border-bottom: 2px solid #1FF6CB;
}

#updateinformation th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
 
  
}
            #updateinformation td, #updateinformation th {
  border: 1px solid #ddd;
  padding: 8px;
   font-size: 1.1em;
}

table{
    
     border-collapse: collapse;
    width:100%;
}

        

  .container {
  padding: 16px;
}


@media  (max-width: 768px) {
    
    
    .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
                width:95%;
                margin-left: 3%;
                margin-top:5%;
               
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
              #profileid
            {
                
                width:20%;
                height:40px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            
             .main{
    
    background-color: whitesmoke;
margin-left: 5%;
    margin-top: 5%;
    width:90%;
    height:auto;
}
.main h3{
    font-size: 17px;
}

.main p
{
    font-size: 12px;
}
            


  input[type=submit]
            {
              
                font-size: 12px;
          
          
           
            }
            
            input[type=text]
            {
              
                font-size: 12px;
          
          
           
            }
            
            .content-table
{
    border-collapse: collapse;
    margin-top:5%;
  
    width: 100%;
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
     font-size: 13px;
    
         
   
}

.content-table tbody tr
{
    border-bottom: 1px solid #EE83F2;
}




.content-table tbody tr:last-of-type
{
    border-bottom: 2px solid #1FF6CB;
}

.tabcontent h3{
     font-size: 17px;
}


#updateinformation th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
 
  
}
            #updateinformation td, #updateinformation th {
  border: 1px solid #ddd;
  padding: 8px;
   font-size: 13px;
}

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
    
      <% 
                 
                manager e = UserDao.getmanagerBySession((String)session.getAttribute("user"));
       
        %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3">
    <div class="container-fluid">
        <a href="#"class="navbar-brand mr-3"><img src="<%=e.getBase64Image() %>"  id="profileid" > Contractor</a>
        
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
               
            </div>
            <div class="navbar-nav ml-auto">
           
                 <a href="page1.jsp" class="nav-item nav-link active">Dashboard</a>
                <a href="reportmanager.jsp" class="nav-item nav-link">Analysis</a>
                <a href="notificationmanager.jsp" class="nav-item nav-link">Notification</a>
                <a href="register.jsp" class="nav-item nav-link">Management</a>
                  <a href="profilemanager.jsp" class="nav-item nav-link">profile</a>
                    <a href="index.jsp" class="nav-item nav-link">LogOut</a>
            </div>
        </div>
    </div>    
</nav>
<div class="tab">
    
         <button class="tablinks" onclick="openCity(event, 'register')">  Register Device</button>
            <button class="tablinks" onclick="openCity(event, 'table')">  List Device </button>
             <button class="tablinks" onclick="openCity(event, 'monitor')"> Monitor </button>
            <button class="tablinks" onclick="openCity(event, 'update')"> Update Level</button>
    
</div>
    
    
      <div id="register" class="tabcontent">
            <div class="main">
                <br>
                <h3>Registration Form</h3>
                <br>
                <form action="process3.jsp"   method="POST">

                    <table>
                        
                         <tr>
                            <td>
                               
                            </td>
                            <td>
                                <input type="hidden" name="contractor" value="">
                            </td>
                        </tr>
                                                

                        <tr>
                            <td>
                                <p>        Name : </p>
                            </td>
                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>        Device ID: </p>
                            </td>
                            <td>
                                <input type="text" name="device">
                            </td>
                        </tr>
                        <tr>
                            
                             <td>
                                 <p>               Location : </p>
                            </td>
                            <td>
                                <select name="location">
  <option  selected>Toilet1</option>
  <option>Toilet2</option>
  <option>Toilet3</option>
 
</select>
                            </td>
                        </tr>
                            <td>
                                <input type="submit" name="submit" value="Submit">
                            </td>
                        </tr>
                    </table>
                </form>

            </div>

        </div>
    
       <div id="table" class="tabcontent">
            <h3>List of Device</h3>
            <center>
                 <div class="table-responsive"> 
            <table class="content-table">
                 <thead>
            <tr>
                <th>Name</th>
                <th>DeviceID</th>
              
              <th>location</th>

     <th width="40%">Action</th>
            </tr>
            </thead>
            <% List <soap_info> nike01=UserDao.listdevice((String)session.getAttribute("user"));
            
     
            for(soap_info objf:nike01)
{
           %>
           
           <tr>
               <td><%=objf.getName() %></td>
               <td><%=objf.getDeviceid() %></td>
               <td><%=objf.getLocation()  %></td>
               <td width="40%">  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=objf.getDeviceid() %>">Edit</button>
 <a href="delete.jsp?id=<%=objf.getDeviceid()  %>" onclick="return confirm('Are you sure to delete?')"><button  type="button" onclick='myfunctional()' class="btn btn-info">Delete</button></a></td>
           </tr>
           
           
           <div id="myModal<%=objf.getDeviceid() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                                        <form action="process3.jsp" method="POST">
                                            <input type="text" name="name" value="<%=objf.getName() %>">
                                            
                                            <input type="text" name="id" value="<%=objf.getDeviceid() %>">
                                              <input type="text" name="location" value="<%=objf.getLocation() %>">
                                                <input type="submit" name="submit"  value="Edit">
                                        </form>
						
						
						
				    </div>
				</div>
			</div>
		</div>
           <%}%>
            </table>
                 </div>
            
       </div>   
            
            <div id="monitor" class="tabcontent">
            <h3>The record of quantity of soap</h3>
            <center>
                <div class="table-responsive">
               <table class="content-table">
                <thead>
            <tr>
                <th >Device ID</th>
                <th>Distance</th>
                <th>LongDate</th>
                
              <th>location</th>
         

            </tr>
            </thead>
               <%
              List<result> list = UserDao.getresult((String)session.getAttribute("user"));

            for (result obj : list) {



            %>
            
            <tbody>
            <center>
               <tr>
                <td width="30%"> <%=obj.getDeviceid() %></td>
                <td><%=obj.getDistance() %></td>

                <td><%=obj.getLogdate()%></td>
  <td><%=obj.getLocation() %></td>

  <td>
      
  
            </tr>
            
            </tbody>

 <%}%>




        </table>
                </div>
            </center>
 
 <script>
            function countDown(secs, elem)
            {
                var element = document.getElementById(elem);

                if (secs < 1) {
                    document.quiz.submit();
                } else
                {
                    secs--;
                    setTimeout('countDown(' + secs + ',"' + elem + '")', 1500);
                }
            }

            function test() {
                return true;
            }
        </script>
        
        
         <script type="text/javascript">countDown(100, "status");</script>
                      
<% 
   result obj1=UserDao.getcount();
   
if(obj1.getCount()>0)
{
    System.out.println("device okey");
}

else
    
{
    %>
      <script type="text/javascript">countDown(100, "status");</script>
   <form name="quiz" id="myquiz" onsubmit="return test()" method="post" action="sent3.jsp">

            <input type="hidden" name="mail" value="<%=e.getEmail()%>" />

            <input type="hidden" name="sub" value="">
            <input type="hidden" name="mess" value="Something Wrong to the device or battery. Please check it now" border="none"></input>

        </form>

    
    
    <%
}
%> 

        </div>

                   <div id="update" class="tabcontent">
                       
                       
                       <table id="updateinformation">
                           
                           <th style="font-size:1.3 em;">Distance</th>
                           <th style="font-size:1.3 em;">Details</th>
                           <th >Action</th>
                           
                      
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
