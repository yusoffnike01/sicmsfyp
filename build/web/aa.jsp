<%-- 
    Document   : aa
    Created on : Dec 12, 2019, 1:22:11 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form name="myForm" id="myForm" target="_myFrame" action="sent.jsp" method="POST">
    <p>
        <input name="mail" value="ronaldoyusoff@gmail.com" />
    </p>
    <p>
        <input type="text" name="sub" value="Enter Subject Line">
    </p>
    <p>
        <textarea rows="12" cols="80" name="mess" value="dsff"></textarea
    </p>
    <p>
        <input type="submit" value="Submit" />
    </p>
</form>

<script type="text/javascript">
    window.onload=function(){
        var auto = setTimeout(function(){ autoRefresh(); }, 100);

        function submitform(){
          alert('test');
          document.forms["myForm"].submit();
        }

        function autoRefresh(){
           clearTimeout(auto);
           auto = setTimeout(function(){ submitform(); autoRefresh(); }, 10000);
        }
    }
</script>
    </body>
</html>
