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
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttoilet", "root", "admin");
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
                e.setUsernamemanager(rs.getString(3));
                e.setName(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setNumber(rs.getString(6));
                e.setAge(rs.getInt(7));
                e.setAddress(rs.getString(8));
                e.setCity(rs.getString(9));
                e.setState(rs.getString(10));

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
                e.setUsernamemanager(rs.getString(3));
                e.setName(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setNumber(rs.getString(6));
                e.setAge(rs.getInt(7));
                e.setAddress(rs.getString(8));
                e.setCity(rs.getString(9));
                e.setState(rs.getString(10));

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
                e.setUsernamemanager(rs.getString(3));
                e.setName(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setNumber(rs.getString(6));
                e.setAge(rs.getInt(7));
                e.setAddress(rs.getString(8));
                e.setCity(rs.getString(9));
                e.setState(rs.getString(10));

                img = rs.getBlob(11);
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
                    "UPDATE cleaner SET username=?, password=? WHERE username=?");
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPasword());
            ps.setString(3, e.getUsername());
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
                    "UPDATE contractor SET usernamemanager=?, password=? WHERE usernamemanager=?");
            ps.setString(1, obj.getUsername());
            ps.setString(2, obj.getPassword());
            ps.setString(3, obj.getUsername());
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

    public static int deletemessage(String usernamemanager) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM message WHERE usernamemanager = '" + usernamemanager + "'");
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
                    "INSERT INTO quantityused (code) values (?)");

            ps.setString((1), obj1.getCode());
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
                    "SELECT * FROM quantityused ORDER BY id DESC LIMIT 1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                quantityused e = new quantityused();

                e.setId(rs.getInt(1));
                e.setCode(rs.getString(2));
                e.setTime(rs.getString(3));

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
                e.setName(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setNumber(rs.getString(5));
                e.setAge(rs.getInt(6));
                e.setAddress(rs.getString(7));
                e.setCity(rs.getString(8));
                e.setState(rs.getString(9));

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
                e.setName(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setNumber(rs.getString(5));
                e.setAge(rs.getInt(6));
                e.setAddress(rs.getString(7));
                e.setCity(rs.getString(8));
                e.setState(rs.getString(9));

                img = rs.getBlob(10);
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
                    "INSERT INTO cleaner (username, password, usernamemanager, name, email, number, age, address, city, state, image) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            InputStream obj = e.getPart().getInputStream();
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
            ps.setBlob(11, obj);

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

    public static User getforgetcleaner(String username) {

        User obj = new User();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM forget WHERE username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                obj.setId(rs.getInt(1));
                obj.setUsername(rs.getString(2));
                obj.setFavourite(rs.getString(3));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return obj;
    }
public static int getupdateforget(User obj) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE forget SET favourite=? WHERE username=?");
            ps.setString(1, obj.getFavourite());
            ps.setString(2, obj.getUsername());
 
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
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
                    "select t.id, t.deviceid, t.distance, t.logdate, soap_info.location from ((result t inner join ( select deviceid, max(logdate) as MaxDate from result group by deviceid ) tm on t.deviceid = tm.deviceid and t.logdate = tm.MaxDate) inner join soap_info on t.deviceid=soap_info.deviceid ) where soap_info.usernamemanager=?");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                result obj = new result();
                obj.setId(rs.getInt(1));
                obj.setDeviceid(rs.getString(2));
                obj.setDistance(rs.getInt(3));
                obj.setLogdate(rs.getTimestamp(4));
                obj.setLocation(rs.getString(5));

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
                    "INSERT INTO inactive (username, name, age, address, city, state) values (?, ?, ?, ?, ?, ?)");
            ps.setString(1, obj.getUsername());

            ps.setString(2, obj.getName());
            ps.setInt(3, obj.getAge());
            ps.setString(4, obj.getAddress());
            ps.setString(5, obj.getCity());
            ps.setString(6, obj.getState());

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
                    "select m.id, m.deviceid, m.count, m.logdate, count_info.location from ((resultcount m inner join ( select deviceid, max(logdate) as MaxDate from resultcount group by deviceid ) tm on m.deviceid = tm.deviceid and m.logdate = tm.MaxDate) inner join count_info on m.deviceid=count_info.deviceid ) where count_info.usernamemanager=?");
              ps.setString(1, usernamemanager);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                count obj = new count();
                obj.setId(rs.getInt(1));
                obj.setDeviceid(rs.getString(2));
                obj.setCount(rs.getInt(3));
                obj.setLogdate(rs.getTimestamp(4));
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

}
