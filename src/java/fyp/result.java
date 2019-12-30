/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fyp;

import java.sql.Timestamp;

/**
 *
 * @author user
 */
public class result {
    
    String deviceid;
    int id;
    int distance;
    Timestamp logdate;

    public String getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    
    public int getId() {
        return id;
    }

    public int getDistance() {
        return distance;
    }

    public Timestamp getLogdate() {
        return logdate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public void setLogdate(Timestamp logdate) {
        this.logdate = logdate;
    }
    
    
    
}
 