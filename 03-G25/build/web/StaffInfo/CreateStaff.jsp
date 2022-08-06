<%-- 
    Document   : StaffLogin
    Created on : May 13, 2022, 6:24:00 PM
    Author     : Benz
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
        <title>Add Staff Page</title>
    </head> 
    
    <body>
        
        <% 
           String emailErr = (String) session.getAttribute("C_emailErr");
           String nameErr = (String) session.getAttribute("C_nameErr");
           String passErr = (String) session.getAttribute("C_passErr");
           String phoneErr = (String) session.getAttribute("C_phoneErr");
           String posErr = (String) session.getAttribute("C_posErr");
           String DOBErr = (String) session.getAttribute("C_DOBErr");
           String salaryErr = (String) session.getAttribute("C_salaryErr");
           String empDateErr = (String) session.getAttribute("C_empdateErr");
           String permissionErr = (String) session.getAttribute("C_permissionErr");
           String addSuccess = (String) session.getAttribute("C_addSuccess");
        %>
        
        <div class="container">
            <h1 class="h1 mb-4 mt-3">Add Staff</h1>
            
            <form action="CreateStaffServlet" method="post">
                
                <% if (addSuccess != null) { %>
                        <div class="mt-3 alert alert-secondary"><%= addSuccess %></div>
                <% }%> 
                
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label for="InputEmai1" class="form-label">Email</label>
                      <input type="text" name="email" class="form-control" id="InputEmai1" aria-describedby="emailHelp">
                      <div id="emailHelp" class="form-text"> <%= (emailErr != null ? emailErr : "Enter Email") %> </div>
                    </div>
                </div>
                    
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
                      <label class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" aria-describedby="passHelp">
                      <div id="passHelp" class="form-text"> <%= (passErr != null ? passErr : "Enter Password: 1 UpperCase, 1 LowerCase, 1 Symbol, 1 Number") %> </div>
                    </div>
                </div>    
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Phone Number</label>
                      <input type="text" name="phoneNo" class="form-control" aria-describedby="phoneHelp">
                      <div id="phoneHelp" class="form-text"> <%= (phoneErr != null ? phoneErr : "Enter Phone Number") %> </div>
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
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Date Of Birth</label>
                      <input type="text" name="dob" class="form-control" aria-describedby="DOBHelp">
                      <div id="DOBHelp" class="form-text"> <%= (DOBErr != null ? DOBErr : "Enter Date Of Birth YYYY-MM-DD") %> </div>
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Employment Date</label>
                      <input type="text" name="empdate" class="form-control" aria-describedby="empDateHelp">
                      <div id="empDateHelp" class="form-text"> <%= (empDateErr != null ? empDateErr : "Enter Employment Date YYYY-MM-DD") %> </div>
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Salary</label>
                      <input type="text" name="salary" class="form-control" aria-describedby="salaryHelp">
                      <div id="salaryHelp" class="form-text"> <%= (salaryErr != null ? salaryErr : "Enter Salary") %> </div>
                    </div>
                </div>  
                    
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label class="form-label">Permission</label>
                      <input type="text" name="perms" class="form-control" aria-describedby="permissionHelp">
                      <div id="permissionHelp" class="form-text"> <%= (permissionErr != null ? permissionErr : "Enter Permission (1-4)") %> </div>
                    </div>
                </div>  
                    
                <div class="form-group mb-5">
                    <span>
                        <button type="submit" class="btn btn-primary mb-5">Submit</button>
                        <a href="AdminMenu.jsp" class="btn btn-primary mb-5">Cancel</a>
                    </span>
                </div>
                    
            </form>
            
        </div>
    </body>
</html>