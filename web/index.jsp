<%-- 
    Document   : index
    Created on : 09-Oct-2019, 14:19:34
    Author     : jtrobisch
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>My Magic Login Application</title>
</head>

        <div id="hero">
            <div id="background_animate"></div>
            <h1>Joe's Magical Mystery Application</h1>
            
            <span class="img_holder">
                <img class="dr-glue-little" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/63425/drglue.png" alt="Dr Glue Little">
                <div class="left_arm">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/63425/left-arm.png" alt="Left Arm">
                </div>
                <div class="right_arm">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/63425/right-arm.png" alt="Right Arm">
                </div>
            </span>
        </div>
        <form action="LoginController" method="post" accept-charset="utf-8">
              
            <div class="input_holder">
                
                <span><i class="fa fa-user"></i></span><input type="text" name="username" placeholder="Username" required autofocus="">
            </div>
            <div class="input_holder">
                <span><i class="fa fa-lock"></i></span><input type="password" name="password" id="password_field" placeholder="Password" required>
            </div>
           
            <input type="submit" class="submit_button" value="Log in">
            <% boolean statVal;%>
            <%
                try{
                    String stVal = request.getAttribute("status").toString();
                    statVal = Boolean.parseBoolean(stVal);
                    if(statVal==false){
                      %>
                    <p style="text-align:center;color:red;">Login details are incorrect!</p>
                    <%
                    }
                }catch(Exception Ex){
                    %>
                    <p style="text-align:center;">Login to see your treats!</p>
                    <%
                }
            %>
             
        </form>
        <script>
            window.onload = function() {
            var p = document.getElementById("password_field");

            p.onfocus = function() {
                document.querySelector(".img_holder").className += " password";
            }

            p.onblur = function() {
                document.querySelector(".password").className = "img_holder";
            }

            document.querySelector("body").className = "";
        }
        </script>
</body>
</html>