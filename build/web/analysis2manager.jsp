<%-- 
    Document   : analysis2manager
    Created on : Oct 17, 2019, 12:46:42 AM
    Author     : user
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="fyp.User"%>
<%@page import="java.util.List"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>
<%@page import="fyp.quantityused"%>
<%@page import="fyp.manager"%>
<%@page import="java.util.ArrayList"%>
<html>


    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script> 
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <style>
            body {
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

            .main{

                width:60%;
                height:auto;
                background-color: whitesmoke;
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
            
            .info
            {
               float:right;
                
                background-color: white;
            }

            
           
        </style>
        <script>

            function togglebar()
            {
                document.getElementById("bar").classList.toggle('active');
            }
            
                  
  
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

            manager obj2 = UserDao.getmanagerBySession((String) session.getAttribute("user"));

        %>



    </style> <div id="bar">
        <div class="toggle-btn"   onclick="togglebar()">

            <span></span>
            <span></span>
            <span></span>
        </div>
        <ul>


            <li>
                <img src="<%=obj2.getBase64Image()%>" id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw; "> <%=obj2.getUsername()%></P>
                <br>

            </li>
               <a href="page1.jsp">  
                    <li style="font-size:1.2vw;"> Dashboard</li
                </a>
                <a href="reportmanager.jsp">   
                    <li style="font-size:1.2vw;"> Analysis</li>
                </a>
               <a href="analysis2manager.jsp">   
                <li style="font-size:1.2vw;"> Analysis2</li>
            </a>
               <a href="notificationmanager.jsp">  
                    <li style="font-size:1.2vw;"> Notification</li
                </a>
              <a href="register.jsp">  
                    <li style="font-size:1.2vw;"> Management cleaner</li
                </a>
                  <a href="profilemanager.jsp">  
                <li style="font-size:1.2vw;">Profile</li>
                  </a>
                <a href="index.jsp">  
                    
                    <li style="font-size:1.2vw;">Log Out</li>
                </a>
        </ul>
    </div>


    <%
        // --- Create two Java Arrays  
        ArrayList<Integer> id1 = new ArrayList<Integer>();
        ArrayList<String> time = new ArrayList<String>();

        // --- Loop 10 times and create 10 string dates and 10 users  
        List<quantityused> list = UserDao.getalldisplay();
        for (quantityused obj : list) {

            id1.add(obj.getId());
            time.add(obj.getTime());
        }


    %>  
    <script>
        // --- add a comma after each value in the array and convert to javascript string representing an array  


        var monthData2 = [<%= join(time, ",")%>];



        var monthData = [<%= join(id1, ",")%>];


    </script>  

    <script>

        window.onload = function () {
            zingchart.render({
                id: "myChart",
                width: "100%",
                height: 380,
                data: {
                    "type": "bar",
                    "title": {
                        "text": "Graph Soap"
                    },
                    "scale-x": {
                       
                        "labels": monthData2
                    },
                    "plot": {
                        "line-width": 1
                    },
                    "series": [{

                            "values": monthData,
                          
                           
                               
                           
                        }
                        
                        
                    ]
                }
            });
        };
    </script>


<div 

    <div class="main">
        <br><br>
            The quantity soap used in latest
       
        
       
       
        <div id="myChart"></div>  

     
           
       
     
        
                   
        
<br>
    </div>
</body>

</html>
