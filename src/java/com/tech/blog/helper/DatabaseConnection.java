package com.tech.blog.helper;
import java.sql.*;

public class DatabaseConnection {

    public static Connection getDBConnection(){
        
        Connection conn = null;
        try{
            
                
                // Loading the driver class
                Class.forName("com.mysql.jdbc.Driver");

                // Creating a connection
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "shisanpara");
            
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return conn;
    } 
}
