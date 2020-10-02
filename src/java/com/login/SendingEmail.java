/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author NIKHIL
 */
public class SendingEmail {
    private String userEmail;
    private String myHash;
    
    public SendingEmail(String userEmail, String myHash){
        this.userEmail = userEmail;
        this.myHash = myHash;
    }
    
    public void sendMail(){
        String email = "shop.hungersaver@gmail.com";
        String pword = "";
        Properties properties = new Properties();
        
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");  
        properties.put("mail.smtp.port", "465");
        
       Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(email, pword);
            }
        });
        
        try{
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setSubject("HungeSaver.in Email verification link");
            message.setText("Verification Link....");
            message.setText("Your Verification Link :: "+"http://localhost:8084/ActivateAccount?key1="+userEmail+"&key2="+myHash);
            Transport.send(message);
        }catch(Exception ex){
            System.out.println("SendingEmail...."+ex);
        }
    }
    
}
