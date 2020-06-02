<%-- 
    Document   : table
    Created on : Jul 16, 2019, 8:32:59 AM
    Author     : user
--%>

<%@page import="fyp.information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>
<%@page import="fyp.User"%>



<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dashboard</title>
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
body
{
     margin: 0%;
                padding: 0%;
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg");
                background-size: cover;
               
                     
                font-family: sans-serif;
}
 
    .navbar-nav
    {
      
       margin-left:520px;
       
    }
    #profileid
            {
                
                width:12%;
                height:45px;
                  border-radius: 50%;
                border:2px solid #34495e;
         
                box-sizing: border-box;
             
                
            }
            
       

      .main{

                background-color: whitesmoke;
                width:60%;
                height:auto;
                margin-left: 20%;
                margin-top: 5%;
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
                color:black;

            }

            .content-table tbody tr
            {
                border-bottom: 1px solid #EE83F2;
            }




            .content-table tbody tr:last-of-type
            {
                border-bottom: 2px solid #1FF6CB;
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
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
  margin-left: 75%;
  position:fixed;
  height:80px;
}
.alert p
{
    font-size: 12px;
    
}
.alert.warning {background-color: #ff9800;}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
@media  (max-width: 768px) {
    
   .alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
  margin-left: 50%;
  
  height:82px;
}
.alert p
{
    font-size: 10px;
    
}


.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}
             
            
    .navbar-nav
    {
      
       margin-left:4%;
       
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
                width:100%;
                height:auto;
              margin-left: 0%;
                margin-top: 5%;
            }


            .content-table
            {
                border-collapse: collapse;

                font-size: 0.9em;
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
                color:black;

            }

            .content-table tbody tr
            {
                border-bottom: 1px solid #EE83F2;
            }




            .content-table tbody tr:last-of-type
            {
                border-bottom: 2px solid #1FF6CB;
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
                 
                User e = UserDao.getUserBySession((String) session.getAttribute("user"));
        %>
        
       
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3">
    <div class="container-fluid">
        <a href="#"class="navbar-brand mr-3"><img src="<%=e.getBase64Image() %>"  id="profileid" > Cleaner</a>
        
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
              
              
            </div>
            <div class="navbar-nav ml-auto">
                <div class="dropdown">
                     <a href="table.jsp#" class="nav-item nav-link active">Dashboard</a>
                     
                    
                </div>
                 
                  
                  
                  <div class="dropdown">
                <a href="Report.jsp" class="nav-item nav-link">Monitor</a>
                 
                  </div>
                <a href="notification.jsp" class="nav-item nav-link">Notification</a>
            
                 <a href="profile.jsp" class="nav-item nav-link">profile</a>
            <a href="index.jsp" class="nav-item nav-link">LogOut</a>
                
            </div>
        </div>
    </div> 
        
       
</nav>
      <%
            List <result> a=UserDao.getresultbattery(e.getUsernamemanager());
            
for( result m: a)
{

    
    %>
   
        <div class="alert">
  <span class="closebtn">&times;</span>  
  <strong><p>Warning!</p></strong> <p>Please check your <%=m.getDeviceid() %> because low battery.</p>
</div>
   
    
    <%
}
            
            
            %>
<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
        <div class="main">
            <center>
<div class="table-responsive">   
                <table class="content-table">
                    <thead>
                        <tr>
                            <th>Device ID</th>
                            <th>Level soap</th>
                            <th>Date</th>
                            <th>Battery</th>
                           <th>Location</th>



                        </tr>
                    </thead>
                    <%
                        List<result> list = UserDao.getresult(e.getUsernamemanager());
                     information c = UserDao.getinformationByaltitude();
                        for (result obj : list) {


                    %>

                    <tbody>
                    <center
                        <tr>
                            <td> <%=obj.getDeviceid()%></td>
                            <td><%= c.getDistance()-obj.getDistance() %> cm</td>

                            <td><%=obj.getLogdate()%></td>
                            <td><%=obj.getBattery() %>%</td>

  <td><%=obj.getLocation() %></td>
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
        
        
         <script type="text/javascript">countDown(1200, "status");</script>
                      
<% 
   result obj1=UserDao.getcount();
   
if(obj1.getCount()>0)
{
    System.out.println("device okey");
}

else
    
{
    %>
      <script type="text/javascript">countDown(1200, "status");</script>
   <form name="quiz" id="myquiz" onsubmit="return test()" method="post" action="sent4.jsp">

            <input type="hidden" name="mail" value="<%=e.getEmail()%>" />

            <input type="hidden" name="sub" value="">
            <input type="hidden" name="mess" value="Something Wrong to the device or battery. Please check it now" border="none"></input>

        </form>

    
    
    <%
}
%> 
        </div>
    
</div>

 
</body>


</html>
