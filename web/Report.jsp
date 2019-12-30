<%@page import="fyp.information"%>
<%@page import="fyp.quantityused"%>
<%@page import="fyp.User"%>
<%@page import="java.util.List"%>
<%@page import="fyp.UserDao"%>
<%@page import="fyp.result"%>

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
                background-image: url("80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg") ;
                justify-content: center;
                min-height: 100vh;
                background-size: cover;

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
            
            
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
                width:60%;
                margin-left: 20%;
                margin-top:4%;
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
                margin-left: 20%;
                background-color: white;
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

            }  #bar
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

                background: white;
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

            User obj2 = UserDao.getUserBySession((String) session.getAttribute("user"));

        %>



    <div id="bar">
        <div class="toggle-btn"   onclick="togglebar()">

            <span></span>
            <span></span>
            <span></span>
        </div>
        <ul>


            <li>
                <img src="<%=obj2.getBase64Image()%>" id="profileid" > <p style="padding-left:60%; padding-top: 20px; font-size:1.2vw; color:black "> <%=obj2.getUsername()%></P>
                <br>

            </li>
            <a href="table.jsp">  
                <li style="font-size:1.2vw; color:black"> Dashboard</li
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

                
                  <div class="tab">
        <button class="tablinks" onclick="openCity(event, 'monitor')">Monitor</button>
        <button class="tablinks" onclick="openCity(event, 'analysis')">analysis</button>

    </div>
                
 <div id="monitor" class="tabcontent">


      <div class="info">
            low   &nbsp;  &nbsp; &nbsp;: 5cm<br>
            median:10cm<br>
            high  &nbsp;  &nbsp; :20cm
        </div>
        <br><br><br>
        

 <div id="myChart"></div>  
 
 
 
 
  <%
            List<result>list1=UserDao.getallresult();
   
       for (result obj3:list1)
       { 
          


 if(obj3.getDistance()>=16)
{
   
              %>
<p>perlu isi</p>

<%
  

   break;
  
}
             
            


else if((obj3.getDistance())<0){
%>
<p>no data</p>
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


        var Data2 = [<%= join(time, ",")%>];



        var Data = [<%= join(id1, ",")%>];

</script>













   <%
        // --- Create two Java Arrays  

        ArrayList<String> id = new ArrayList<String>();
        ArrayList<Integer> distance = new ArrayList<Integer>();

        // --- Loop 10 times and create 10 string dates and 10 users  
        List<result> list5 = UserDao.getallresult();
        information b = UserDao.getinformationByaltitude();
        for (result obj : list5) {

            id.add("" + obj.getDeviceid());
            distance.add(b.getDistance() - obj.getDistance());
        }


    %>  
    <script>
        // --- add a comma after each value in the array and convert to javascript string representing an array  


        var monthData2 = [<%= join(id, ",")%>];



        var monthData = [<%= join(distance, ",")%>];


    </script>  




    <script>








    window.onload = function () {
        zingchart.render({
            id: "myChart1",
            width: "100%",
            height: 380,
            data: {
                "type": "bar",
                "title": {
                    "text": "Graph Soap11"
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
                    "text": "Graph Soap"
                },
                "scale-x": {
                    "labels": monthData2
                },
                "plot": {
                    "line-width": 1
                },
                "series": [

    <%

        result obj5 = UserDao.getallresult1();
        information x = UserDao.getinformationBySession();
        information l = UserDao.getinformationByaltitude();
        if ((l.getDistance() - obj5.getDistance()) < x.getDistance()) {

            
      %>      
            
            
           {

                        "values": monthData,

                        "background-color": "#f20a15",

                    },
            
            
        <% } %>
            
            
            

                   <%
                       if((l.getDistance() - obj5.getDistance()) > x.getDistance())
                       {
                            %>   
                              {

                        "values": monthData,

                        "background-color": "#7B68EE",


     },<%}
                               
                              
                       
                       
                       %>
                                           
                       <%
                            if((l.getDistance() - obj5.getDistance()) == x.getDistance())
                            {
                           %>
                                               
                                                {

                        "values": monthData,

                        "background-color": "#FFFF00",


     }
                                               
                                               
                                               
                                               <%
                                
                            }
                           
                           %>
                    

                ]
            }
        });


    };

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
    
    
</body>

</html>
