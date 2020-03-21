/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.login.LoginBean;
import pkg.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author NIKHIL
 */
public class LoginDAO {
    public String LoginCheck(LoginBean bean){
        
        Connection con = MyConnection.getConnection();
        
        String email = bean.getEmail();
        String pword = bean.getPword();
        try{
            String sqlQuery = "select * from customer where email=? and pword=? and active=1";
            PreparedStatement pst = con.prepareStatement(sqlQuery);
            pst.setString(1, email);
            pst.setString(2, pword);
            
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String dbemail = rs.getString("email");
                String dbpword = rs.getString("pword");
                if(dbemail.equalsIgnoreCase(email) && dbpword.equalsIgnoreCase(pword)){
                    return "success";
                }
                return "error";
            }
            
        }catch(Exception ex){
            System.out.println("From LoginDAO"+ex);
        }
        
        return "error";
    }
    
}
