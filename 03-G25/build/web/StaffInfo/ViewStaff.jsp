<%-- 
    Document   : ViewStaff.jsp
    Created on : May 15, 2022, 9:55:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script type="text/javascript" src="js/script.js"></script>
        <title>View Staff Page</title>
    </head> 
    
    <body>
        
        <% 
           String posErr = (String) session.getAttribute("V_posErr");
           String nameErr = (String) session.getAttribute("V_nameErr");
           String existErr = (String) session.getAttribute("V_existErr");
           Staff staff = (Staff) session.getAttribute("foundStaff");
        %>
        
        <div class="container">
            <h1 class="h1 mb-4 mt-3">View Staff</h1>
            
            <form action="ViewStaffServlet" method="post">
                
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">First Name</label>
                      <input type="text" name="fname" class="form-control" aria-describedby="fnameHelp">
                      <div id="fnameHelp" class="form-text"> <%= (nameErr != null ? nameErr : "Enter First Name") %> </div>
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Last Name</label>
                      <input type="text" name="lname" class="form-control" aria-describedby="lnameHelp">
                      <div id="lnameHelp" class="form-text"> <%= (nameErr != null ? nameErr : "Enter Last Name") %> </div>
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Staff Position</label>
                      <input type="text" name="pos" class="form-control" aria-describedby="posHelp">
                      <div id="posHelp" class="form-text"> <%= (posErr != null ? posErr : "Enter Staff Position") %> </div>
                    </div>
                </div>  
                    
                <div class="form-group">
                    <span>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a href="AdminMenu.jsp" class="btn btn-primary">Cancel</a>
                    </span>
                </div>
                    
                    <% if (existErr != null) { %>
                        <% if (!existErr.isEmpty()) { %>
                            <div class="mt-3 alert alert-danger"><%= existErr %></div>
                        <% } %>
                    <% } else { %>
                    <% } %>
                    
                <table class="table text-center table-light mt-4">
                        <tr>
                            <th class="text-dark">Email</th>
                            <th class="text-dark">Name</th>
                            <th class="text-dark">Password</th>
                            <th class="text-dark">Phone</th>
                            <th class="text-dark">DOB</th>
                            <th class="text-dark">Status</th>
                            <th class="text-dark">Position</th>
                            <th class="text-dark">Salary</th>
                            <th class="text-dark">Employment Date</th>
                            <th class="text-dark">Permissions</th>
                        </tr>
                        
                        <% if (staff != null) { %>
                            <tr>
                                <td class="text-dark"><%= staff.getEmail() %></td>
                                <td class="text-dark"><%= staff.getName() %></td>
                                <td class="text-dark"><%= staff.getPassword() %></td>
                                <td class="text-dark"><%= staff.getPhoneNo() %></td>
                                <td class="text-dark"><%= staff.getDOB() %></td>
                                <td class="text-dark"><%= staff.getActive() %></td>
                                <td class="text-dark"><%= staff.getStaffPosition() %></td>
                                <td class="text-dark"><%= staff.getStaffSalary() %></td>
                                <td class="text-dark"><%= staff.getStaffEmploymentDate() %></td>
                                <td class="text-dark"><%= staff.getPermissions() %></td>
                            </tr>
                        <% } %>

                    </table>

                    
            </form>
            
        </div>
    </body>
</html>
