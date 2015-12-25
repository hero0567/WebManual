package com.crossp.utils;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class EmailUtil {

    public static void main(String[] args) throws EmailException {
        // sendBy163();
        sendByLocalSendMail();
        // sendByLocalSendMailWithPassword();
    }

    public static void sendBy163() throws EmailException {
        SimpleEmail email = new SimpleEmail();
        email.setHostName("smtp.163.com");
        email.addTo("496949660@qq.com", "bulktree");
        email.setFrom("hero0567@163.com", "bulktree");
        email.setAuthentication("hero0567", "xl7890480");
        email.setSubject("Hello, This is My First Email Application");
        email.setMsg("I am bulktree This is JavaMail Application");
        email.send();
        System.out.println("The SimpleEmail send sucessful!!!");
    }

    public static void sendByLocalSendMail() throws EmailException {
        SimpleEmail email = new SimpleEmail();
        email.setHostName("localhost");
        email.addTo("hero0567@163.com", "bulktree");
        email.setFrom("dongliang@linux102.example.com", "bulktree");
        email.setSubject("Hello, This is My First Email Application");
        email.setMsg("I am bulktree Th \r\nis is JavaMail  \n Application");
        email.send();
        System.out.println("The SimpleEmail send sucessful!!!");
    }

    public static void sendByLocalSendMailWithPassword() throws EmailException {
        SimpleEmail email = new SimpleEmail();
        email.setHostName("localhost");
        email.addTo("hero0567@163.com", "bulktree");
        email.setFrom("dongliang@linux102.example.com", "bulktree");

        email.setAuthentication("root", "4563673");
        email.setSubject("Hello, This is My First Email Application");
        email.setMsg("I am bulktree This is JavaMail Application");
        email.send();
        System.out.println("The SimpleEmail send sucessful!!!");
    }
    
    public static void sendEmail(String to) throws EmailException{
    	SimpleEmail email = emailFactory();
    	email.addTo(to, "bulktree");
    	email.send();
    	System.out.println("The SimpleEmail send sucessful!!!");
    }
    
    private static SimpleEmail emailFactory() throws EmailException{
    	SimpleEmail email = new SimpleEmail();
    	email.setFrom("hero0567@163.com", "bulktree");
        email.setAuthentication("hero0567", "xl7890480");
        email.setSubject("Hello, This is My First Email Application");
        email.setMsg("I am bulktree This is JavaMail Application");
    	return email;
    }
}