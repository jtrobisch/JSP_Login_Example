<%-- 
    Document   : success
    Created on : 09-Oct-2019, 14:23:37
    Author     : jtrobisch
--%>

<%@page import="myWorld.customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Dashboard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>

<% customer obj;%>
<%
    try{
        obj = (customer)request.getAttribute("userOby");
        String x =  obj.name;
%>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">
  <!-- The Grid -->
  <div class="w3-row-padding">
    <!-- Left Column -->
    <div class="w3-third">
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
              </div>
        <div class="w3-container">
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i> <a href="logout.jsp">Logout </a></p>
        </div>
      </div><br>
    <!-- End Left Column -->
    </div>
    <!-- Right Column -->
    <div class="w3-twothird">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Profile</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Full Name:</b></h5>
          <h6 class="w3-text-teal"><%= obj.name %></h6>
        </div>
        <div class="w3-container">
            <h5 class="w3-opacity"><b>Web Account:</b></h5>
          <table class="w3-text-teal">
            <tr class="text-align:left;">
              <th>Bespoke ID</th>
              <th>Username</th>
              <th>Password</th>
            </tr>
            <tr>
              <td><h6 class="w3-text-teal"><%= obj.ID %></h6></td>
              <td><h6 class="w3-text-teal"><%= obj.username %></h6></td>
              <td><h6 class="w3-text-teal"><%= obj.password %></h6></td>
            </tr>
            </table>
          <hr>
        </div>
         <div class="w3-container">
          <h5 class="w3-opacity"><b>Current Age:</b></h5>
          <h6 class="w3-text-teal"><%= obj.age %></h6>
          <hr>
        </div>
          <div class="w3-container">
          <h5 class="w3-opacity"><b>Address:</b></h5>
          <h6 class="w3-text-teal"><%= obj.address %></h6>
          <hr>
        </div>
          <div class="w3-container">
          <h5 class="w3-opacity"><b>Salary:</b></h5>
          <h6 class="w3-text-teal">£<%= obj.salary %></h6>
          <hr>
        </div>
       </div>
      </div>

    <!-- End Right Column -->
    </div>
  <!-- End Grid -->
  </div>
   <!-- End Page Container -->
</div>
<footer class="w3-container w3-teal w3-center w3-margin-top">
    <p>Powered by Ageing Spacemen</p>
</footer>
        <%
                session.setAttribute("session","TRUE");  
                }catch(Exception ex){
        %>
        <div style="width:60%;margin:auto;margin-top:100px;background-color:red;text-align:center;">
        <p style="color:white;">Unauthorised Access</p>
        </div>
        <%
           }
         %>
</body>
</html>