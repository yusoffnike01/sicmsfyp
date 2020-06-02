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
    int count;
    private int battery;
    private String location;
 
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

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getBattery() {
        return battery;
    }

    public void setBattery(int battery) {
        this.battery = battery;
    }
    
    
    
}
 