/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fyp;

import java.util.Base64;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
public class User {

    private String usernamemanager;
    private String username;
    private String pasword;
    private String ic;
    private String name;
    private int age;
    private String email;
    private String number;
    private String address;
    private String city;
    private String state;
    private Part image;
    private String base64Image;

    private String favourite;
    private int id;

    public String getFavourite() {
        return favourite;
    }

    public String getIc() {
        return ic;
    }

    public void setIc(String ic) {
        this.ic = ic;
    }

    
    public void setFavourite(String favourite) {
        this.favourite = favourite;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

  

    public String getUsername() {
        return username;
    }

    public String getPasword() {
        return pasword;
    }
    
    public String getUsernamemanager() {
        return usernamemanager;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Part getImage() {
        return image;
    }

    public void setImage(Part image) {
        this.image = image;
    }

    
    
        public String getName() {
        return name;
    }
        
        
        
          public int getAge() {
        return age;
    }

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public Part getPart() {
        return image;
    }

    public String getBase64Image() {
        return base64Image;
    }
    
    public void setPasword(String pasword) {
        this.pasword = pasword;
    }
      public void setUsernamemanager(String usernamemanager) {
        this.usernamemanager = usernamemanager;
    }



  

    public void setUsername(String username) {
        this.username = username;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPart(Part image) {
        this.image = image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

}
