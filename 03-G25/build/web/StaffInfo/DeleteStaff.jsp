<%-- 
    Document   : DeleteStaff.jsp
    Created on : May 13, 2022, 9:25:16 PM
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
        <title>Delete Staff Page</title>
    </head> 
    
    <body>
        
        <% 
           String existErr = (String) session.getAttribute("D_email404");
           String emailErr = (String) session.getAttribute("D_emailErr");
           String emailSuccess = (String) session.getAttribute("D_emailSuccess");
        %>
        
        <div class="container">
            <h1 class="h1 mb-4 mt-3">Delete Staff</h1>
            
            <form action="DeleteStaffServlet" method="post">
                
                <div class="form-group">
                    <div class="mb-3 mr-10 col-xs-2">
                      <label for="InputEmai1" class="form-label">Email</label>
                      <input type="text" name="email" class="form-control" id="InputEmai1" aria-describedby="emailHelp">
                      <div id="emailHelp" class="form-text"> <%= (emailErr != null ? emailErr : "Enter Email") %> </div>
                    </div>
                </div>  
                    
                <div class="form-group mb-5">
                    <span>
                        <button type="submit" class="btn btn-primary mb-5">Submit</button>
                        <a href="AdminMenu.jsp" class="btn btn-primary mb-5">Cancel</a>
                    </span>
                </div>
                    
                <% if (existErr != null) { %>
                        <% if (!existErr.isEmpty()) { %>
                            <div class="mt-2 alert alert-danger"><%= existErr %></div>
                        <% } %>
                <% } %>
                
                <% if (emailSuccess != null) { %>
                    <div class="mt-2 alert alert-secondary"><%= emailSuccess %></div>
                <% }%> 
                    
            </form>
            
        </div>
    </body>
</html>