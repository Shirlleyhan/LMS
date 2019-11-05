package Dao;
//new
import Entity.User;
import Util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends DBConnect{

    public int regist(User u){
        int r=0;
        try {
            Connection conn = super.getConnection();
            String sql = "insert into user (user,password,mail)values (?,?,?)";
            PreparedStatement pst = null;
            pst = conn.prepareStatement(sql);
            pst.setString(1, u.getUsername());
            pst.setString(2, u.getPassword());
            pst.setString(3, u.getMail());
            r = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }
    public String login(User u){
        try {
            Connection conn = super.getConnection();
            String sql = "SELECT password,user FROM user WHERE user=?";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            pst.setString(1, u.getUsername());
            rs = pst.executeQuery();
            if (rs.next()) {
                if (u.getPassword().equals(rs.getString("password"))){
                    u.setUsername(rs.getString("user"));
                    return "true";
                }
                else{
                    return "false";
                }
            }
            else{
                return "false";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public String sendmail(User u){
        try {
            Connection conn = super.getConnection();
            String sql = "SELECT password FROM user WHERE user=?";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            pst.setString(1, u.getUsername());
            rs = pst.executeQuery();
            if (rs.next()) {
                    return rs.getString(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public User queryadminbyname(String s){
        try {
            User u = new User();
            Connection conn = super.getConnection();
            String sql = "SELECT * FROM User WHERE user=" + "'" + s + "'";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
           if(rs.next()){
               u.setUsername(rs.getString("user"));
               u.setMail(rs.getString("mail"));
               return  u;
           }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
