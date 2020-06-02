<%-- 
    Document   : registercontractor
    Created on : May 5, 2020, 1:18:09 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
          <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">
        <title>JSP Page</title>
        <style>
            body {
  font-size: 12px;
  line-height: 1.5;
  color: #222;
  font-weight: 400;

 }
 .container {
  width: 660px;
  position: relative;
  margin-top: 5%; 
  border:1px solid black;
 }
 
 .signup-content {
  background: #fff;
  border-radius: 10px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  -o-border-radius: 10px;
  -ms-border-radius: 10px;
}
 
 .form-group {
  overflow: hidden;
  margin-bottom: 3px; }
 
 
 .form-input {
  width: 100%;
  border: 1px solid #ebebeb;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  padding: 10px 15px;
  box-sizing: border-box;
  font-size: 14px;
  font-weight: 500;
  color: #222; }
 .form-submit {
  width: 100%;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  padding: 17px 10px;
  box-sizing: border-box;
  font-size: 14px;
  font-weight: 700;
  color: #fff;
  text-transform: uppercase;
  border: none;
  background-image: -moz-linear-gradient(to left, #74ebd5, #9face6);
  background-image: -ms-linear-gradient(to left, #74ebd5, #9face6);
  background-image: -o-linear-gradient(to left, #74ebd5, #9face6);
  background-image: -webkit-linear-gradient(to left, #74ebd5, #9face6);
  background-image: linear-gradient(to left, #74ebd5, #9face6); }
 

 
            </style>
    </head>
    <body>
     <div data-role="appbar" class="fg-white bg-lightCobalt" data-expand-point="md">
  
    <a href="/" class="brand no-hover">
      <h4>SICMS</h4>
    </a>
  

  <ul class="app-bar-menu ml-auto">
    <li><a href="managecontractor.jsp">Manage</a></li>
    
      <li>
        <a href="registercontractor.jsp">register</a>
       
      </li>
      <li>
        <a href="homepage.html">Log Out</a>
      </li>
    
  </ul>
</div>
       <div class="container">
     <center>
       <h1>Create Account</h1>
     <div class="signup-content">
       <form method="POST" id="signup-form" class="signup-form" action="updateprofile2.jsp" enctype="multipart/form-data">
       <table>
           
           <tr>
               <td>
                   <div class="form-group">
                   <input type="text" name="username"  class="form-input" placeholder="Username">
                   </div>
               </td>
              
           </tr>
           <tr>
               <td>
                   <div class="form-group">
                   <input type="text" name="name"  class="form-input" placeholder="Name">
                   </div>
               </td>
              
           </tr>
           <tr>
               <td>
                   <div class="form-group">
                   <input type="password" name="pass" class="form-input" placeholder="Password">
                   <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                   </div>
               </td>
           </tr>
           <tr>
               <td>
                   <div class="form-group">
                   
                   <input type="text" name="company" class="form-input" placeholder="Company"</td>
                   </div>
           </tr>
           <tr><td>
                   <div class="form-group">
                       <input type="text" name="ic" class="form-input" placeholder="IC"></div></td>
           </tr>
           <tr>
               <td>
                   <div class="form-group">
                   <input type="email" name="email" class="form-input" placeholder="Email">
                   </div>
               </td>
           </tr>
           <tr> <tr>
               <td>
                   <div class="form-group">
                   <input type="text" name="phone" class="form-input" placeholder="phone">
                   </div>
               </td>
           </tr>
           <tr>
               <td>
                   <div class="form-group">
                   <input type="number" name="age" class="form-input" placeholder="Age">
                   </div>
               </td>
           </tr>
           <tr>
               
               <td>
                   
                   <select name="nation" >
                       <option value="Melayu">Melayu</option>
                       <option value="Chinese">Chinese</option>
                       <option value="Indian">Indian</option>
                       <option value="other">Others</option>
                   </select>
               </td>
           </tr>
           <tr>
               <td><input type="text" name="address" class="form-input" placeholder="Address"></td>
           </tr>
           <tr>
               <td> <input type="text" name="city" class="form-input" placeholder="City"></td>
           </tr>
           <tr>
               
               <td> <select name="state">
                                    <option  selected>...</option>
                                    <option>KEDAH</option>
                                    <option>KELANTAN</option>
                                    <option>MELAKA</option>
                                    <option>NEGERI SEMBILAN</option>
                                    <option>PAHANG</option>
                                    <option>PERAK</option>
                                    <option>PERLIS</option>
                                    <option>PULAU PINANG</option>
                                    <option>SABAH</option>
                                    <option>SARAWAK</option>
                                    <option>TERENGGANU</option>
                                    <option>W.P(KUALA LUMPUR)</option>
                                    <option>W.P(LABUAN)</option>
                                    <option>W.P(PUTRAJAYA)</option>
                                </select>
               </td>
           </tr>
           <tr>
                <td>
                    <div class="form-group">
                                    <input type="file" name="image">
                    </div>
                                </td>
           </tr>
           <tr>
               <td> <div class="form-group">
                            <input type="submit" name="Submit" id="submit" class="form-submit" value="Sign up"/>
                        </div></td>
           </tr>
       </table>
       </form>
     </div>
     </center>
       </div>
    </body>
    
      <script>
      
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
     
      </script>
</html>
