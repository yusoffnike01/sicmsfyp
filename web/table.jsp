<%-- 
    Document   : table
    Created on : Jul 16, 2019, 8:32:59 AM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>
<%@page import="fyp.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
         <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
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
        </style>
        
        
            <%
              response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
          
            
            %>
       
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
                 
                User e = UserDao.getUserBySession((String)session.getAttribute("user"));
       
        %>
         <div id="bar">
            <div class="toggle-btn"   onclick="togglebar()">
                
                <span></span>
                <span></span>
                <span></span>
            </div>
          <ul>
              
            
              <li>
                  <img src="<%=e.getBase64Image() %>"  id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw; color:black"> <%=e.getUsername() %></P>
                  <br>
                  <br>
              </li>
         
             
                <a href="table.jsp">  
                    <li style="font-size:1.2vw;  color:black"> Dashboard</li
                </a>
                <a href="Report.jsp">   
                    <li style="font-size:1.2vw; color:black"> Analysis</li>
                </a>
               
               <a href="notification.jsp">  
                    <li style="font-size:1.2vw; color:black"> Notification</li
                </a>
                  <a href="profile.jsp">  
                <li style="font-size:1.2vw; color:black">Profile</li>
                  </a>
                <a href="index.jsp">  
                    
                    <li style="font-size:1.2vw; color:black">Log Out</li>
                </a>
            </ul>
        </div>
        
     
        
        
        <div class="main">
            <center>
           
            <table class="content-table">
                <thead>
            <tr>
                <th>Device ID</th>
                <th>Distance</th>
                <th>LongDate</th>
                



            </tr>
            </thead>
               <%
              List<result> list = UserDao.getallresult();

            for (result obj : list) {



            %>
            
            <tbody>
            <center
               <tr>
                <td> <%=obj.getDeviceid() %></td>
                <td><%=obj.getDistance() %></td>

                <td><%=obj.getLogdate()%></td>

               
            </tr>
            
            </tbody>

 <%}%>




        </table>
       
            
            
        </div>
 </center>
        </div>
    
    </body>
</html>
