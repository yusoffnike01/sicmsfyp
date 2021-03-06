/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fyp;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.servlet.http.Part;

public class UserDao {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttoilet", "root","admin");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int updateUser(User e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
 "UPDATE cleaner SET username=?, password=?, usernamemanager=?, name=?, email=?, number=?, age=?, address=?, city=?, state=? WHERE username=?");

          
           

         

            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPasword());
         
            ps.setString(3, e.getUsernamemanager());
            ps.setString(4, e.getName());
            ps.setString(5, e.getEmail());
            ps.setString(6, e.getNumber());
            ps.setInt(7, e.getAge());
            ps.setString(8, e.getAddress());
            ps.setString(9, e.getCity());
            ps.setString(10, e.getState());

           
            ps.setString(11, e.getUsername());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
    
     public static int updateimagecleaner(User e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
 "UPDATE cleaner SET username=?, image=? WHERE username=?");

            InputStream is = e.getPart().getInputStream();

           
ps.setString(1, e.getUsername());
            ps.setBlob(2, is);
            ps.setString(3, e.getUsername());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
 public static int updateimage(manager e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
 "UPDATE contractor SET usernamemanager=?, image=? WHERE usernamemanager=?");

            InputStream is = e.getPart().getInputStream();

           
ps.setString(1, e.getUsername());
            ps.setBlob(2, is);
            ps.setString(3, e.getUsername());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static List<User> getAllUser() {
        List<User> list = new ArrayList<User>();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM cleaner");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User e = new User();

                e.setUsername(rs.getString(1));
                e.setPasword(rs.getString(2));
                e.setIc(rs.getString(3));
                e.setUsernamemanager(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setAddress(rs.getString(9));
                e.setCity(rs.getString(10));
                e.setState(rs.getString(11));

                img = rs.getBlob("image");
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<User> getAllUser1(String username) {

        List<User> list = new ArrayList<User>();

        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM cleaner WHERE usernamemanager= ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User e = new User();

                e.setUsername(rs.getString(1));
                e.setPasword(rs.getString(2));
                e.setIc(rs.getString(3));
                e.setUsernamemanager(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setNational(rs.getString(9));
                e.setAddress(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));

                img = rs.getBlob("image");
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
                list.add(e);
            }
            con.close();
        } catch (Exception m) {
            m.printStackTrace();
        }
        return list;
    }

    public static User getUserBySession(String user) {
        User e = new User();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM cleaner WHERE username=?");
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                e.setUsername(rs.getString(1));
                e.setPasword(rs.getString(2));
                e.setIc(rs.getString(3));
                e.setUsernamemanager(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setNational(rs.getString(9));
                e.setAddress(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));

                img = rs.getBlob(13);
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }

    public static User getLoginBySession(String username, String password) {
        User e = new User();
        try {
            Connection con = UserDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM cleaner WHERE  username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setUsername(rs.getString(1));
                e.setPasword(rs.getString(2));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;

    }

    
    public static int getresultsession(String deviceid) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM result WHERE deviceid = '" + deviceid + "'");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static keycode getkeycodesession(String code) {

        keycode obj = new keycode();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM keyCode WHERE code=?");
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                obj.setCode(rs.getString(1));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return obj;
    }

    public static List<result> getalldeletetableresult() {
        List<result> list = new ArrayList<result>();

        try {

            Connection con = getConnection();
            Statement statement = con.createStatement();
            statement.executeUpdate("TRUNCATE result");

            System.out.println("Successfully truncated result");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static manager getforgetsession(String username, String favourite) {
        manager obj = new manager();
        try {
            Connection con = getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM forgetcontractor WHERE usernamemanager=? and favourite=?");
            ps.setString(1, username);
            ps.setString(2, favourite);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                obj.setUsername(rs.getString(1));
                obj.setFavourite(rs.getString(2));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return obj;
    }

    public static int getupdatepassword(User e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE cleaner SET password=? WHERE email=?");
            ps.setString(1, e.getPasword());
            ps.setString(2, e.getEmail());
 
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static int getupdate(manager obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE contractor SET password=? WHERE email=?");
            ps.setString(1, obj.getPassword());
            ps.setString(2, obj.getEmail());
          
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static int deletecode(String code) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM keycode WHERE code = '" + code + "'");
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int savemessage(message obj) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO message (usernamemanager, username, message) values (?, ?, ?)");
            ps.setString(1, obj.getUsernamemanager());
            ps.setString(2, obj.getUsername());
            ps.setString(3, obj.getMessage());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;

    }

    public static int deletemessage(String time) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM message WHERE time = '" + time + "'");
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int savequantityused(quantityused obj1) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO quantityused (code, deviceid) values (?, ?)");

            ps.setString(1, obj1.getCode());
            ps.setString(2, obj1.getDeviceid());
            status = ps.executeUpdate();
            con.close();;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static List<quantityused> getalldisplay() {
        List<quantityused> list = new ArrayList<quantityused>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT month(time) Date, COUNT(DISTINCT id) totalCOunt FROM quantityused GROUP BY month(time)");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                quantityused e = new quantityused();

                  e.setTime(rs.getString(1));
                    e.setId(rs.getInt(2));
                 
              
               

                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static manager getLoginmanagerBySession(String username, String password) {
        manager e = new manager();
        try {
            Connection con = UserDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM contractor WHERE usernamemanager=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setUsername(rs.getString(1));
                e.setPassword(rs.getString(2));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;

    }

    public static List<manager> getAllmanager() {
        List<manager> list = new ArrayList<manager>();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM contractor");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                manager e = new manager();
                e.setUsername(rs.getString(1));
             
                e.setPassword(rs.getString(2));
                e.setCompany(rs.getString(3));
                 e.setIc(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setNation(rs.getString(9));
                e.setAddress(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));

                img = rs.getBlob("image");
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static manager getmanagerBySession(String user) {
        manager e = new manager();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM contractor WHERE usernamemanager=?");
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                e.setUsername(rs.getString(1));
               
                e.setPassword(rs.getString(2));
                e.setCompany(rs.getString(3));
                 e.setIc(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setNation(rs.getString(9));
                e.setAddress(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));

                img = rs.getBlob(13);
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }

    public static List<message> getalldisplaymessage(String usermanager) {
        List<message> list = new ArrayList<message>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM message where usernamemanager=?");
            ps.setString(1, usermanager);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                message e = new message();
                e.setUsernamemanager(rs.getString(1));
                e.setUsername(rs.getString(2));
                e.setMessage(rs.getString(3));
               e.setTime(rs.getString(4));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static message getUsermanagerBySession(String usermanager) {
        message e = new message();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM message WHERE usernamemanager=?");
            ps.setString(1, usermanager);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                e.setUsernamemanager(rs.getString(1));
                e.setUsername(rs.getString(2));
                e.setMessage(rs.getString(3));

            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }

    public static int save(User e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO cleaner (username, password, ic, usernamemanager, name, email, number, age, national, address, city, state, image) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            InputStream obj = e.getPart().getInputStream();
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPasword());
            ps.setString(3, e.getIc());
            ps.setString(4, e.getUsernamemanager());
            ps.setString(5, e.getName());
            ps.setString(6, e.getEmail());
            ps.setString(7, e.getNumber());
            ps.setInt(8, e.getAge());
            ps.setString(9, e.getNational());
            ps.setString(10, e.getAddress());
            ps.setString(11, e.getCity());
            ps.setString(12, e.getState());
            ps.setBlob(13, obj);

            status = ps.executeUpdate();

            con.close();

        } catch (Exception m) {
            m.printStackTrace();
            
        } 
        return status;
    }

    public static int updatemanager(manager obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE contractor SET usernamemanager=?, password=?, name=?, email=?, number=?, age=?, address=?, city=?, state=? WHERE usernamemanager=?");



            ps.setString(1, obj.getUsername());
      
            ps.setString(2, obj.getPassword());
            ps.setString(3, obj.getName());
            ps.setString(4, obj.getEmail());
            ps.setString(5, obj.getNumber());
            ps.setInt(6, obj.getAge());
            ps.setString(7, obj.getAddress());
            ps.setString(8, obj.getCity());
            ps.setString(9, obj.getState());

       
            ps.setString(10, obj.getUsername());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static int getdeleteprofile(String username) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM cleaner WHERE username = '" + username + "'");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static List<information> getdisplayinformation() {

        List<information> list = new ArrayList<information>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                information obj = new information();
                obj.setId(rs.getInt(1));
                obj.setDistance(rs.getInt(2));
                obj.setDetail(rs.getString(3));

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static int updateinformation(information obj) {
        int status = 0;

        try {
            Connection con = getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE information SET id=?, distance=?, details=? WHERE id=?");
            ps.setInt(1, obj.getId());
            ps.setInt(2, obj.getDistance());
            ps.setString(3, obj.getDetail());
            ps.setInt(4, obj.getId());
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static information getinformationBySession() {
        information obj = new information();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information WHERE id='2'");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                obj.setId(rs.getInt(1));
                obj.setDistance(rs.getInt(2));
                obj.setDetail(rs.getString(3));

            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return obj;
    }

    public static manager getforgetsession(String usernamemanager) {

        manager obj = new manager();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM forgetcontractor WHERE usernamemanager=?");
            ps.setString(1, usernamemanager);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                obj.setUsername(rs.getString(1));
                obj.setUsername(rs.getString(2));
                obj.setFavourite(rs.getString(3));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return obj;
    }

   


public static int getupdateforgetcontractor(manager obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE forgetcontractor SET favourite=? WHERE usernamemanager=?");
            ps.setString(1, obj.getFavourite());
            ps.setString(2, obj.getUsername());
 
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

  
    public static information getinformationByaltitude() {
        information obj = new information();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information WHERE id='4'");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                obj.setId(rs.getInt(1));
                obj.setDistance(rs.getInt(2));
                obj.setDetail(rs.getString(3));

            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return obj;
    }

    public static List<information> getdisplayinformation1() {

        List<information> list = new ArrayList<information>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information LIMIT 3");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                information obj = new information();
                obj.setId(rs.getInt(1));
                obj.setDistance(rs.getInt(2));
                obj.setDetail(rs.getString(3));

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static result getallresult1() {
        result obj = new result();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT deviceid,distance,logdate FROM result s1 WHERE logdate = (SELECT MAX(logdate) FROM result s2 WHERE s1.deviceid = s2.deviceid) ORDER BY deviceid, logdate;");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                obj.setDeviceid(rs.getString(1));

                obj.setDistance(rs.getInt(2));
                obj.setLogdate(rs.getTimestamp(3));

            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }

    public static List<result> getresult( String usernamemanager) {

        List<result> list = new ArrayList<result>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select t.id, t.deviceid, t.distance, t.logdate, t.battery, soap_info.location from ((result t inner join ( select deviceid, max(logdate) as MaxDate from result group by deviceid ) tm on t.deviceid = tm.deviceid and t.logdate = tm.MaxDate) inner join soap_info on t.deviceid=soap_info.deviceid ) where soap_info.usernamemanager=?");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                result obj = new result();
                obj.setId(rs.getInt(1));
                obj.setDeviceid(rs.getString(2));
                obj.setDistance(rs.getInt(3));
                obj.setLogdate(rs.getTimestamp(4));
                obj.setBattery(rs.getInt(5));
                obj.setLocation(rs.getString(6));

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static int inactive(User obj) {
        
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO inactive (username, name, ic, email,  age, address, city, state) values (?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, obj.getUsername());

            ps.setString(2, obj.getName());
            ps.setString(3, obj.getIc());
            ps.setString(4, obj.getEmail());
            ps.setInt(5, obj.getAge());
            ps.setString(6, obj.getAddress());
            ps.setString(7, obj.getCity());
            ps.setString(8, obj.getState());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;

    }
    
    public static  result getcount()
    {
        result obj=new result();
        

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT COUNT(*) FROM result WHERE logdate>TIMESTAMP(DATE_SUB(NOW(),INTERVAL 50 MINUTE))");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

               
              obj.setCount(rs.getInt(1));
               
                
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
        
    }

    
    public static int savedevice(soap_info obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO soap_info (usernamemanager, name, deviceid, location) values (?, ?, ?, ?)");

        ps.setString(1, obj.getUsernamemanager());
        ps.setString(2, obj.getName());
        ps.setString(3, obj.getDeviceid());
        ps.setString(4, obj.getLocation());

            status = ps.executeUpdate();

            con.close();

        } catch (Exception m) {
            m.printStackTrace();
        }
        return status;
    }
    
    public static List<soap_info>listdevice(String usernamemanager)
    {
        List<soap_info> list = new ArrayList<soap_info>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM `soap_info` WHERE usernamemanager=?");
             ps.setString(1, usernamemanager);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                soap_info obj = new soap_info();
               
                obj.setUsernamemanager(rs.getString(1));
                obj.setName(rs.getString(2));
                obj.setDeviceid(rs.getString(3));
                obj.setLocation(rs.getString(4));
                
                
                
                
                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    
      public static int updatedevice(soap_info obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE soap_info SET name=?, deviceid=?, location=? WHERE deviceid=?");

                        ps.setString(1, obj.getName());

            ps.setString(2, obj.getDeviceid());
            ps.setString(3, obj.getLocation());
              ps.setString(4, obj.getDeviceid());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

      
        public static int getdeletedevice(String deviceid) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM soap_info WHERE deviceid = '" + deviceid + "'");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
      
       public static int savedevice2(count obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO count_info (usernamemanager, name, deviceid, location) values (?, ?, ?, ?)");

        ps.setString(1, obj.getUsernamemanager());
        ps.setString(2, obj.getName());
        ps.setString(3, obj.getDeviceid());
        ps.setString(4, obj.getLocation());

            status = ps.executeUpdate();

            con.close();

        } catch (Exception m) {
            m.printStackTrace();
        }
        return status;
    }
      
       public static int updatedevice2(count obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE count_info SET name=?, deviceid=?, location=? WHERE deviceid=?");

                        ps.setString(1, obj.getName());

            ps.setString(2, obj.getDeviceid());
            ps.setString(3, obj.getLocation());
              ps.setString(4, obj.getDeviceid());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
       
         
    public static List<count>listdevice1(String usernamemanager)
    {
        List<count> list = new ArrayList<count>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM `count_info` WHERE usernamemanager=?");
             ps.setString(1, usernamemanager);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                count obj = new count();
               
                obj.setUsernamemanager(rs.getString(1));
                obj.setName(rs.getString(2));
                obj.setDeviceid(rs.getString(3));
                obj.setLocation(rs.getString(4));
                
                
                
                
                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    
    public static List<count> getresult1( String usernamemanager) {

        List<count> list = new ArrayList<count>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select m.id, m.deviceid,m.count, m.logdate, count_info.location from ((resultcount m inner join ( select deviceid, max(logdate) as MaxDate from resultcount group by deviceid ) tm on m.deviceid = tm.deviceid and m.logdate = tm.MaxDate) inner join count_info on m.deviceid=count_info.deviceid ) where count_info.usernamemanager=? GROUP BY DATE(m.logdate) ORDER BY m.logdate DESC limit 1");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                count obj = new count();
                obj.setId(rs.getInt(1));
                obj.setDeviceid(rs.getString(2));
                obj.setCount(rs.getInt(3));
                obj.setLogdate(rs.getString(4));
                obj.setLocation(rs.getString(5));

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

     public static int getdeletedevice1(String deviceid) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM count_info WHERE deviceid = '" + deviceid + "'");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
     
     
     public static  count getstatus()
    {
        count obj=new count();
        

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT COUNT(*) FROM resultcount WHERE logdate>TIMESTAMP(DATE_SUB(NOW(),INTERVAL 50 MINUTE))");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

               
              obj.setStatus(rs.getInt(1));
               
                
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
        
    }
     
       public static  List<information> getid1()
       {
         List  <information> obj=new  ArrayList <information>();
           try{
               Connection  con=getConnection();
               
       
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information where id='1'");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                information e = new information();
                e.setId(rs.getInt(1));
                e.setDistance(rs.getInt(2));
                e.setDetail(rs.getString(3));

                 obj.add(e);
            }
            con.close();
           }catch(Exception e){
               e.printStackTrace();
           }
           return obj;
       }
     
       public static  List<information> getid2()
       {
         List  <information> obj=new  ArrayList <information>();
           try{
               Connection  con=getConnection();
               
       
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information where id='2'");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                information e = new information();
                e.setId(rs.getInt(1));
                e.setDistance(rs.getInt(2));
                e.setDetail(rs.getString(3));

                 obj.add(e);
            }
            con.close();
           }catch(Exception e){
               e.printStackTrace();
           }
           return obj;
       }
     
          public static  List<information> getid3()
       {
         List  <information> obj=new  ArrayList <information>();
           try{
               Connection  con=getConnection();
               
       
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM information where id='3'");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                information e = new information();
                e.setId(rs.getInt(1));
                e.setDistance(rs.getInt(2));
                e.setDetail(rs.getString(3));

                 obj.add(e);
            }
            con.close();
           }catch(Exception e){
               e.printStackTrace();
           }
           return obj;
       }
          
           public static List<count> getallcount() {
        List<count> list = new ArrayList<count>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT count, Date(logdate) FROM resultcount WHERE logdate IN (SELECT max(logdate) FROM resultcount)");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count e = new count();

                  e.setCount(rs.getInt(1));
                     e.setLogdate(rs.getString(2));
                 
              
               

                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
           
           
            
            public static manager getmanagerBySession1() {
        manager e = new manager();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM contractor WHERE usernamemanager='uk1234'");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                e.setUsername(rs.getString(1));
               
                e.setPassword(rs.getString(2));
                e.setCompany(rs.getString(3));
                 e.setIc(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setAddress(rs.getString(9));
                e.setCity(rs.getString(10));
                e.setState(rs.getString(11));

                img = rs.getBlob(12);
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }
            
             public static manager getmanagerBySession2() {
        manager e = new manager();
        String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM contractor WHERE usernamemanager='uk5678'");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                e.setUsername(rs.getString(1));
               
                e.setPassword(rs.getString(2));
                e.setCompany(rs.getString(3));
                 e.setIc(rs.getString(4));
                e.setName(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setNumber(rs.getString(7));
                e.setAge(rs.getInt(8));
                e.setAddress(rs.getString(9));
                e.setCity(rs.getString(10));
                e.setState(rs.getString(11));

                img = rs.getBlob(12);
                inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }
    public static int gettruncatequantityused( 
    ) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "TRUNCATE quantityused");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

 
  public static List<User>getsearchcleaner(String username)
    {
        List<User> list = new ArrayList<User>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM inactive WHERE name LIKE '"+username+"%'");
       
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                User obj = new User();
               
                obj.setUsername(rs.getString(1));
                obj.setName(rs.getString(2));
                obj.setIc(rs.getString(3));
                obj.setEmail(rs.getString(4));
                obj.setAge(rs.getInt(5));
                obj.setAddress(rs.getString(6));
                obj.setCity(rs.getString(7));
                obj.setState(rs.getString(8));
                
                
                
                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
  
  
  public static  List<User> getemail( String username)
  {
    List<User> list = new ArrayList<User>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select A.email from contractor as A inner join cleaner on A.usernamemanager=cleaner.usernamemanager where username='"+username+"'");
       
            ResultSet rs = ps.executeQuery();
          
            while (rs.next()) {

                User obj = new User();
               
             
                obj.setEmail(rs.getString(1));
             
                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;  
  }
  
  public static List<result> getresultbattery( String usernamemanager) {

        List<result> list = new ArrayList<result>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select t.id, t.deviceid, t.distance, t.logdate, t.battery, soap_info.location from ((result t inner join ( select deviceid, max(logdate) as MaxDate from result group by deviceid ) tm on t.deviceid = tm.deviceid and t.logdate = tm.MaxDate) inner join soap_info on t.deviceid=soap_info.deviceid ) where soap_info.usernamemanager=?");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                result obj = new result();
                obj.setId(rs.getInt(1));
                obj.setDeviceid(rs.getString(2));
                obj.setDistance(rs.getInt(3));
                obj.setLogdate(rs.getTimestamp(4));
                obj.setBattery(rs.getInt(5));
                obj.setLocation(rs.getString(6));

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
  
   public static int savefeedback(feedback obj) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO feedback (usernamemanager, name, message, time) values (?, ?, ?, ?)");
            ps.setString(1, obj.getUsernamemanager());
            ps.setString(2, obj.getUsername());
            ps.setString(3, obj.getMessage());
            ps.setString(4, obj.getTime());
            
            

            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;

    }

  public static List<feedback> getlistmessage(String usernamemanager) {

        List<feedback> list = new ArrayList<feedback>();

        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT A.usernamemanager,A.message, A.time FROM feedback as A inner join cleaner as b on A.name=B.name where A.usernamemanager= ?");
            ps.setString(1, usernamemanager);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                feedback e = new feedback();

                e.setUsernamemanager(rs.getString(1));
                e.setMessage(rs.getString(2));
                e.setTime(rs.getString(3));
               
                list.add(e);
            }
            con.close();
        } catch (Exception m) {
            m.printStackTrace();
        }
        return list;
    }
 public static List<User> getlistuser(String usernamemanager) {

        List<User> list = new ArrayList<User>();

        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT A.username, A.name FROM cleaner as A inner join contractor as B on A.usernamemanager= B.usernamemanager where B.usernamemanager= ?");
            ps.setString(1, usernamemanager);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User e = new User();

                e.setUsername(rs.getString(1));
               e.setName(rs.getString(2));
                list.add(e);
            }
            con.close();
        } catch (Exception m) {
            m.printStackTrace();
        }
        return list;
    }
 
 public static int deletemessage1(String time) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM feedback WHERE time = '" + time + "'");
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
 
  public static User getLoginAdmin(String email, String password) {
        User e = new User();
        try {
            Connection con = UserDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM admin WHERE  email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setEmail(rs.getString(1));
                e.setPasword(rs.getString(2));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;

    }
 
public static int savemanager(manager e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO contractor (usernamemanager, password, company, ic, name, email, number, age, nation, address, city, state, image) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            InputStream obj = e.getPart().getInputStream();
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getCompany());
            ps.setString(4, e.getIc());
            ps.setString(5, e.getName());
            ps.setString(6, e.getEmail());
            ps.setString(7, e.getNumber());
            ps.setInt(8, e.getAge());
            ps.setString(9, e.getNation());
            ps.setString(10, e.getAddress());
            ps.setString(11, e.getCity());
            ps.setString(12, e.getState());
            ps.setBlob(13, obj);

            status = ps.executeUpdate();

            con.close();

        } catch (Exception m) {
            m.printStackTrace();
            
        } 
        return status;
    }

public static int getdeletemanager(String usernamemanager) {

        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM contractor WHERE usernamemanager = '" + usernamemanager + "'");
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

public static List<soap_info> getresult3( String usernamemanager) {

        List<soap_info> list = new ArrayList<soap_info>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT location,COUNT( A.id )FROM soap_info inner join quantityused as A on soap_info.deviceid = A.deviceid where soap_info.usernamemanager=? and MONTH(A.time) = MONTH(CURRENT_DATE()) and YEAR(A.time) = YEAR(CURRENT_DATE()) GROUP BY location");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                soap_info obj = new soap_info();
                obj.setLocation(rs.getString(1));
                obj.setId(rs.getInt(2));
              

                list.add(obj);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    
    public static List<quantityused> getallcurrent() {
        List<quantityused> list = new ArrayList<quantityused>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT MONTHNAME(CURDATE());");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                quantityused e = new quantityused();

                  e.setTime(rs.getString(1));
                   
                 
              
               

                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



}
