/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myWorld;

import java.sql.*;
import java.sql.Statement;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author jtrobisch
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un = request.getParameter("username");
        String pw = request.getParameter("password");
        customer XX = LoginDetailsFind(un,pw);
       
        if (  XX != null &&(un.equals(XX.username) && pw.equals(XX.password))) {
            
            request.setAttribute("userOby",XX);
            request.getRequestDispatcher("success.jsp").forward(request, response);
            response.sendRedirect("success.jsp");
        } else {
            boolean stat = false;
            request.setAttribute("status",stat);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            response.sendRedirect("index.jsp");
        }
    }
    
    
    
     public customer LoginDetailsFind(String username, String password){
     try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","JSPWebApp2","myMagicPass");
            PreparedStatement statement = con.prepareStatement("SELECT * FROM customers WHERE username = ? and password = ?");
            statement.setString(1,username);
            statement.setString(2,password);
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                customer x = new customer(); //create new customer object
                x.ID = rs.getInt(1); //set proeprties of new object
                x.username = rs.getString(2);
                x.password = rs.getString(3);
                x.name = rs.getString(4);
                x.age = rs.getInt(5);
                x.address = rs.getString(6);
                x.salary = rs.getDouble(7);
                con.close();
                return x;
            }else{
                return null;
            }
            
        }catch(Exception e){ 
            return null;
        }
    }
}