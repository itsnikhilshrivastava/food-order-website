/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;
import java.sql.*;
/**
 *
 * @author NIKHIL
 */
public class MyConnection {
    
    
    public static Connection getConnection()
    {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/food_order","root","nikhil");
        }catch(Exception ex){
            System.out.println("From MyConnection Class"+ex);
        }
        return con;
    }
    
}
