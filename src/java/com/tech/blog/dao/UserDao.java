package com.tech.blog.dao;
import com.tech.blog.entities.User;
import java.sql.*;
import java.sql.Timestamp;
/*
This UserDao class will interact with the data. It will fetch and insert the data to the database from the app. 
    1. First import sql package from java.sql class
    2. Create a connection to the database
    3. Get the data from the app
    4. Create a query
    5. Execute the query
*/

public class UserDao {

    private Connection conn;

    public UserDao(Connection conn){
        this.conn = conn;
    }
    
    // Method to insert user to the database
    public boolean saveUser(User user){
        boolean status = false;
        try{
            
            String query = "insert into user(name, email, password, gender, about, rdate) values (?, ?, ?, ?, ?, now())";
            PreparedStatement pstmt = this.conn.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            
            pstmt.executeUpdate();
            status = true;
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
        return status;
    }
            
    // Get user by useremail and userpassword
    public User getUserbyEmailAndPassword(String email, String password){
        User user = null;
            
        try{
            
           String query = "select * from user where email = ? and password = ? ";
           PreparedStatement pstmt = conn.prepareStatement(query);
           pstmt.setString(1, email);
           pstmt.setString(2, password);
            
           ResultSet rs = pstmt.executeQuery();
           
           if (rs.next()){
               
               user = new User();
               String name = rs.getString("name");
               user.setName(name);
               user.setId(rs.getInt("id"));
               user.setPassword(rs.getString("password"));
               user.setEmail(rs.getString("email"));
               user.setGender(rs.getString("gender"));
               user.setAbout(rs.getString("about"));
               user.setDateTime(rs.getTimestamp("rdate"));
               user.setProfile(rs.getString("profile"));
               
           }else {
               
           }
        }catch ( Exception e ){
            e.printStackTrace();
        }
        
        return user;
    }
  
    public boolean updteUser(User user){
        boolean status = false;
        try{
            
            // Create a query
            String q = "update user set name = ?, email = ?, about = ?, profile = ? where id = ?";
            PreparedStatement pstmt = this.conn.prepareStatement(q);
            // Set values to query
            pstmt.setString(1, user.getEmail());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getAbout());
            pstmt.setString(4, user.getProfile());
            pstmt.setInt(5, user.getId());
            
            // Execute the query
            pstmt.executeUpdate();
            status = true;
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }
}
