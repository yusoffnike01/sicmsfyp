/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fyp;

/**
 *
 * @author user
 */

import java.sql.Timestamp;
public class message {
    
    private String usernamemanager;
    private String username;
    private String  message;
    private String time;
    public String getUsernamemanager() {
        return usernamemanager;
    }

    public void setUsernamemanager(String usernamemanager) {
        this.usernamemanager = usernamemanager;
    }

    
    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    
}
