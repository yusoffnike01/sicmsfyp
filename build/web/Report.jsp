<%@page import="fyp.quantityused"%>
<%@page import="java.util.ArrayList"%>
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
   
    #profileid
            {
                
              width:6%;
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
                     <a href="#" class="nav-item nav-link">Dashboard</a>
                     <div class="dropdown-content">
  <a href="table.jsp">Dashboard 1</a>
  <a href="table2.jsp">Dashboard 2</a>
                 </div>
                    
                </div>
                 
                  
                  <div class="dropdown">
                  
                <a href="#" class="nav-item nav-link active ">Analysis</a>
                 <div class="dropdown-content">
  <a href="Report.jsp">Analysis 1</a>
  <a href="report2.jsp">Analysis 2</a>
                 </div>
                  </div>
                <a href="notification.jsp" class="nav-item nav-link">Notification</a>
            
                 <a href="profile.jsp" class="nav-item nav-link">profile</a>
            <a href="index.jsp" class="nav-item nav-link">LogOut</a>
                
            </div>
        </div>
    </div> 
        
       
</nav>
<div class="tab">
    
          <button class="tablinks" onclick="openCity(event, 'monitor')"> Monitor</button>
        <button class="tablinks" onclick="openCity(event, 'analysis')"> analysis</button>
             
    
</div>
    
    
   <div id="monitor" class="tabcontent">

        <div class="info">

            <table style="border:'1px'">
                <thead>
                    <tr>
                        <th>Level</th>
                        <th>details</th>
                    </tr>
                </thead>

                <%
                    List <information> mm=UserDao.getid1();
                         List<information> nn=UserDao.getid2();
                         List<information> pp=UserDao.getid3();
                        for(information n:mm)
                        {

                %>

                <tbody>
                <center>
                     <tr>
                        
                        <td><%=n.getDistance() %></td>
                        <%
                            }
                        %>
<td bgcolor="red"></td>
                    </tr>
                                        <tr>
                        <%
                        for(information p:nn)
                        {
                            %>
                            <td><%=p.getDistance() %></td>
                            <%
                            }
                            %>
                        <td bgcolor="yellow"></td>
                    </tr>
                    <tr>
                        <%
                        for(information l:pp)
                        {
                        %>
                        <td><%=l.getDistance() %></td>
                        <%
                            }
                            %>
                                                <td bgcolor="blue"></td>

                    </tr>
                </center>

                </tbody>




            </table>
        </div>
        <br><br><br>


        <div id="myChart"></div>  




        <%
            List<result> list = UserDao.getresult(e.getUsernamemanager());
            information a = UserDao.getinformationBySession();
            information c = UserDao.getinformationByaltitude();
            for (result obj3 : list) {

                if ((c.getDistance() - obj3.getDistance()) >= a.getDistance()) {

        %>
        <p>full</p>

        <%        } else if ((c.getDistance() - obj3.getDistance()) < a.getDistance()) {
        %>

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

        <div id="status"></div>
        <script type="text/javascript">countDown(900, "status");</script>


        <form name="quiz" id="myquiz" onsubmit="return test()" method="post" action="sent2.jsp">

            <input type="hidden" name="mail" value="<%=e.getEmail()%>" />

            <input type="hidden" name="sub" value="Cleaning Servis">
            <input type="text" name="mess" value="needs to be filled" border="none"></input>

        </form>


        <%
                }
            }

        %>





        <form action='process2.jsp' method='POST'>
            Key in Code:<input type="code" name="code">
            <br>
            Device &nbsp;  &nbsp; &nbsp; &nbsp;  :<select name="device">
                <option>Device01</option>
                <option>Device02</option>
            </select>
            <br>
            &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;   <input type="submit" value="Submit">
        </form>
        <br>
    </div>




    
      
        <div id="analysis" class="tabcontent">
        <div id="myChart1"></div>  

       </div>
                     
          
     
<%     // --- Create two Java Arrays  
        ArrayList<Integer> id1 = new ArrayList<Integer>();
        ArrayList<String> time = new ArrayList<String>();

        // --- Loop 10 times and create 10 string dates and 10 users  
        List<quantityused> list6 = UserDao.getalldisplay();
        for (quantityused obj : list6) {

            id1.add(obj.getId());
            time.add(obj.getTime());
        }


    %>  





    <script>
        // --- add a comma after each value in the array and convert to javascript string representing an array  


        var Data2 = [<%= join(time, ",")%>];



        var Data = [<%= join(id1, ",")%>];

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
    ArrayList<Integer> distance = new ArrayList<Integer>();

    // --- Loop 10 times and create 10 string dates and 10 users  
    List<result> list5 = UserDao.getresult(e.getUsernamemanager());

    information x = UserDao.getinformationBySession();
    for (result obj : list5) {
        information b = UserDao.getinformationByaltitude();

        id.add("" + obj.getDeviceid());
        distance.add(b.getDistance() - obj.getDistance());

    }


%>  
<script>
    // --- add a comma after each value in the array and convert to javascript string representing an array  


    var monthData2 = [<%= join(id, ",")%>];



    var monthData = [<%= join(distance, ",")%>];




    var backgroundColor = [];
    for (var data of monthData) {
        if (data < <%=x.getDistance()%>)
        {
            backgroundColor.push("#FF6347");
        } else if (data === <%=x.getDistance()%>)
        {
            backgroundColor.push("#FFFF00");
        } else
        {
            backgroundColor.push("#0066cc");
        }

    }




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
                    "text": "Usage of Soap"
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
                    "text": "Level of Graph Soap",
                    fontSize: 20
                },
                "scale-x": {

                    "labels": [<%= join(id, ",")%>]
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

                        "styles": backgroundColor




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
