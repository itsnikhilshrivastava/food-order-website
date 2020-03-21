/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

/**
 *
 * @author NIKHIL
 */
public class RegisterBean {
    private String mob;
    private String name;

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    private String email;
    private String pword;
    private String Myhash;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public String getMyhash() {
        return Myhash;
    }

    public void setMyhash(String Myhash) {
        this.Myhash = Myhash;
    }
    
    
}
