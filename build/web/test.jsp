<%-- 
    Document   : test
    Created on : Dec 8, 2019, 11:55:10 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="fyp.information"%>
<%@page import="fyp.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
         <table id="updateinformation">
                           
                           <th>Distance</th>
                           <th>Details</th>
                           <th>Action</th>
                           
                      
                   <%    
                       List<information> list4=UserDao.getdisplayinformation();
                        

                       
    for (information obj : list4) {

            
             %>
                               
                              <tr>
<td><%=obj.getId() %></td>
                        <td><%=obj.getDistance()%></td>
                        <td> <%=obj.getDetail()%></td>
                        <td>  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getId() %>">View</button>
</td>

                              </tr>
                              
                              
                              	<div id="myModal<%=obj.getId() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Details</h4>
				    </div>
				    <div class="modal-body">
                                        <form action="testprocess.jsp" method="POST">
                                            <input type="text" name="id" value="<%=obj.getId() %>">
                                            
                                            <input type="text" name="distance" value="<%=obj.getDistance() %>">
                                              <input type="text" name="detail" value="<%=obj.getDetail() %>">
                                                <input type="submit" name="Submit"  value="Edit Profile">
                                        </form>
						
						
						
				    </div>
				</div>
			</div>
		</div>
                             
   <% }%>

<!-- Modal content-->
    
      
  
                   
                            
                        
                        
                    


                
             


                                 
                                 </table>   
                        
                        
                         
    </body>
</html>
