<%-- 
    Document   : notificationmanager
    Created on : Oct 17, 2019, 12:50:24 AM
    Author     : user
--%>

<%@page import="fyp.manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.message"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
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
             margin-top: -5%;
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
      
      function myfunctional()
      {
              <%
                  String usernamemanager=request.getParameter("usernamanager");
                  int status=UserDao.deletemessage(usernamemanager);
                  if(status>0)
                  {
                      response.sendRedirect("notificationmanager.jsp");
                  }
                   
                  
                  
                  %>
      }
   
             
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
             
                      <div class="main">
            <center>
                <form action="" method="POST">
            <table class="content-table">
                <thead>
            <tr>
                <th>username</th>
                <th>message</th>
                
  <th colspan="1">Action</th>


            </tr>
            </thead>
               <%
              List<message> list = UserDao.getalldisplaymessage((String)session.getAttribute("user"));

            for (message obj : list) {



            %>
            
            <tbody>
            <center
               <tr>
                <input  type="hidden" name="usernamanager" value="<%=obj.getUsernamemanager() %>"> 
                <td> <%=obj.getUsername() %></td>
                <td><%=obj.getMessage() %></td>

                <td> <button onclick="return confirm('Are you sure to delete?')" onclick='myfunctional()'  class="btn"><i class="fa fa-trash"></i></button></td>

               
            </tr>
            
            </tbody>

 <%}%>




        </table>
                </form>
            
            
        </div>
 </center>
        </div>
       
    </body>
</html>
