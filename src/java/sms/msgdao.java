/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sms;
import java.sql.*;
import pkg.MyConnection;

/**
 *
 * @author NIKHIL
 */
public class msgdao {
    
    public String MessageUser(msgbean rb){
        String oid = rb.getOid();
        String amount = rb.getAmount();
        String email = rb.getEmail();
        
        
        Connection con = MyConnection.getConnection();
        try{
            PreparedStatement pst = con.prepareStatement("update orders set oid=? where oid='0'");
           
            pst.setString(1, oid);
            
            int i = pst.executeUpdate();
            if(i>0){
                SendEmail se = new SendEmail(oid,amount,email);
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
