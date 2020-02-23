<%-- 
    Document   : analysis2
    Created on : Feb 19, 2020, 12:24:30 AM
    Author     : user
--%>

<%@page import="fyp.quantityused"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="fyp.count"%>
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

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Analysis</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
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
             .info
            {
                float:right;

                background: white;
            }

            input {
                background: none;
                color: black;

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
    
    
#myChart
{
    width:100%;
}
  
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
           
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
   
             
           </script>
</head>


   <%!
        // --- String Join Function converts from Java array to javascript string.  
        public String join(ArrayList<?> arr, String del) {

            StringBuilder output = new StringBuilder();

            for (int i = 0; i < arr.size(); i++) {

                if (i > 0) {
                    output.append(del);
                }

                // --- Quote strings, only, for JS syntax  
                if (arr.get(i) instanceof String) {
                    output.append("\"");
                }
                output.append(arr.get(i));
                if (arr.get(i) instanceof String) {
                    output.append("\"");
                }
            }

            return output.toString();
        }
    %>  
<body>
    
      <% 
                 
                manager e = UserDao.getmanagerBySession((String)session.getAttribute("user"));
       
        %>
        
        <%

            manager obj2 = UserDao.getmanagerBySession((String) session.getAttribute("user"));

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
          <div class="dropdown">
               <a href="#"class="nav-item nav-link ">Dashboard</a>
                 <div class="dropdown-content">
  <a href="page1.jsp">Dashboard 1</a>
  <a href="page2.jsp">Dashboard 2</a>
                 </div>
           </div>
                 
               <div class="dropdown">   
                 
                <a href="#" class="nav-item nav-link active">Analysis</a>
                
                <div class="dropdown-content">
  <a href="reportmanager.jsp">Analysis 1</a>
  <a href="analysis2.jsp">Analysis 2</a>
                 </div>
                </div>
                <a href="notificationmanager.jsp" class="nav-item nav-link">Notification</a>
                <a href="register.jsp" class="nav-item nav-link">Management</a>
                  <a href="profilemanager.jsp" class="nav-item nav-link">profile</a>
                    <a href="index.jsp" class="nav-item nav-link">LogOut</a>
            </div>
        </div>
    </div>    
</nav>
<div class="tab">
    
          <button class="tablinks" onclick="openCity(event, 'monitor')"> Monitor</button>
    <button class="tablinks" onclick="openCity(event, 'analysis')"> Analysis</button>

    
</div>
    
    
   <div id="monitor" class="tabcontent">

       
        <br><br><br>


        <div id="myChart"></div>  




      

       




       
        <br>
    </div>




    
      
        <div id="analysis" class="tabcontent">
        <div id="myChart1"></div>  

       </div>
                     
          
     






    <script>
        // --- add a comma after each value in the array and convert to javascript string representing an array  


       
    </script>





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











</div>

<%
    // --- Create two Java Arrays  

    ArrayList<String> id = new ArrayList<String>();
    ArrayList<Integer> count = new ArrayList<Integer>();

    // --- Loop 10 times and create 10 string dates and 10 users  
    List<count> list5 = UserDao.getresult1((String)session.getAttribute("user"));

    
    for (count obj : list5) {
     

        id.add("" + obj.getLocation());
        count.add(obj.getCount());

    }


%>  




<%
        // --- Create two Java Arrays  
        ArrayList<Integer> id1 = new ArrayList<Integer>();
        ArrayList<String> time = new ArrayList<String>();

        // --- Loop 10 times and create 10 string dates and 10 users  
        List<count> list6 = UserDao.getallcount();
        for (count obj : list6) {

            id1.add(obj.getCount());
            time.add("" +obj.getLogdate());
        }


    %>  

    
    
    
    
    %>
<script>
    // --- add a comma after each value in the array and convert to javascript string representing an array  


    var id = [<%= join(id, ",")%>];



    var monthData = [<%= join(count, ",")%>];




   



</script>  

<script>
        // --- add a comma after each value in the array and convert to javascript string representing an array  


        var Data2 = [<%= join(time, ",")%>];



        var Data = [<%= join(id1, ",")%>];

    </script>
<script>








    window.onload = function () {
       
       
         zingchart.render({
            id: "myChart1",
            width: "100%",
            height: 380,
            data: {
                "type": "line",
                "title": {
                    "text": "Analysis count"
                },
                "scale-x": {

                    "labels": Data2
                },
                "plot": {
                    "line-width": 1
                },
                "series": [{

                        "values": Data




                    }


                ]
            }
        });

       
       
        zingchart.render({
            id: "myChart",
            width: "100%",
            height: 380,

            data: {
                "type": "bar",
                "title": {
                    "text": " Graph Count of People",
                    fontSize: 20
                },
                "scale-x": {

                    "labels": id,
                },
                "plot": {
                    "animation": {
                        "delay": "1000",
                        "effect": "4",
                        "method": "5",
                        "sequence": "1"
                    }


                },
                "series": [

                    {

                        "values": monthData,

                    




                    },
                ]
            }
        }

        );


    <%


    %>




    };




</script>



</body>


</html>
