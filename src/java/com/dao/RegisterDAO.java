/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import java.sql.*;
import pkg.MyConnection;
import com.login.RegisterBean;
import com.login.SendingEmail;
/**
 *
 * @author NIKHIL
 */
public class RegisterDAO {
    
    public String RegisterUser(RegisterBean rb){
        String mob = rb.getMob();
        String name = rb.getName();
        String email = rb.getEmail();
        String pword = rb.getPword();
        String myhash = rb.getMyhash();
        
        Connection con = MyConnection.getConnection();
        try{
            PreparedStatement pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
           
            pst.setString(1, mob);
            pst.setString(2, name);
            pst.setString(3, email);
            pst.setString(4, pword);
            pst.setString(5, myhash);
            pst.setInt(6, 0);
            
            int i = pst.executeUpdate();
            if(i>0){
                SendingEmail se = new SendingEmail(email,myhash);
                se.sendMail();
                return "SUCCESS";
            }
            con.close();
        }catch(Exception ex){
            System.out.println("RegisterDAO File"+ex);
        }
        return "error";
    }
    
}
