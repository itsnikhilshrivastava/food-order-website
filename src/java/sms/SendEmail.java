/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sms;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author NIKHIL
 */
public class SendEmail {
    private String oid;
    private String amount;
    private String useremail;
    
    public SendEmail(String oid, String amount, String email){
        this.oid = oid;
        this.amount = amount;
        this.useremail = email;
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
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(useremail));
            message.setSubject("HungeSaver.in order details");
            message.setText("Your Oder has Successful");
            message.setText("Your order will be delivered within 30 min");
            message.setText("order details.......");
            message.setText("Your Oder has Successful."+"\n"+"Your order will be delivered within 30 minute."+"\n"+"order id="+oid+"  amount="+amount);
            Transport.send(message);
        }catch(Exception ex){
            System.out.println("SendingEmail...."+ex);
        }
    }
    
    
}
