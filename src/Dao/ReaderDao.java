package Dao;

import Entity.Reader;
import Util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ReaderDao extends DBConnect{
    public Reader QueryReaderById(String id){
        Reader reader = new Reader();
        IODao ioDao = new IODao();
        Connection conn = null;
        try {
            conn = super.getConnection();
            String sql = "SELECT * FROM reader WHERE username=" + "'" + id + "'";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()){
                reader.setName(rs.getString("name"));
                reader.setSex(rs.getString("sex"));
                reader.setStatus(rs.getInt("status"));
                reader.setGrade(rs.getInt("grade"));
                reader.setClassnum(rs.getInt("classnum"));
                reader.setBorrow(ioDao.QueryBorrowNumByReaderid(id).size());
            }
            return reader;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public ArrayList<Reader> GetAllReader(){
        ArrayList<Reader> ReaderList = new ArrayList<>();
        Connection conn = null;
        try {
            conn = super.getConnection();
            String sql = "SELECT * FROM reader";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            Reader reader = null;
            while(rs.next()){
                reader = new Reader();
                reader.setUsername(rs.getString("username"));
                reader.setName(rs.getString("name"));
                reader.setSex(rs.getString("sex"));
                reader.setStatus(rs.getInt("status"));
                reader.setMail(rs.getString("mail"));
                reader.setGrade(rs.getInt("grade"));
                reader.setClassnum(rs.getInt("classnum"));
                reader.setTel(rs.getString("tel"));
                ReaderList.add(reader);
            }
            return ReaderList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void SetBlackList(String username, boolean isblack){
        int i = 0;
        Connection conn = null;
        String sql = null;
        try {
            conn = super.getConnection();
            PreparedStatement pst = null;
            if(isblack == true)
                sql = "UPDATE reader SET status=1 WHERE username=?";
            else
                sql = "UPDATE reader SET status=-1 WHERE username=?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            i = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public int insertReader(Reader reader) {
        Connection conn = null;
        String sql = null;
        int rows = 0;
        try {
            conn = super.getConnection();
            sql = "insert into reader value(?,?,?,?,?,?,?,?,?)";
            String username = reader.getUsername();
            String password = reader.getPassword();
            String name = reader.getName();
            String sex = reader.getSex();
            int status = 1;
            String mail = reader.getMail();
            int grade = reader.getGrade();
            String tel = reader.getTel();
            int classnum = reader.getClassnum();

            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, name);
            pst.setString(4, sex);
            pst.setInt(5, status);
            pst.setString(6, mail);
            pst.setString(7, tel);
            pst.setInt(8, grade);
            pst.setInt(9, classnum);

            rows = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rows;
    }

    public int updataLoss(String username) {
        Connection conn = null;
        int rows = 0;
        String sql = null;

        try {
            conn = super.getConnection();
            sql = "update reader set status = 0 where username = ?";
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, username);

            rows = pst.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows;
    }

    public int deleteReader(String username) {
        Connection conn = null;
        int rows = 0;
        String sql = null;

        try {
            conn = super.getConnection();
            sql = "delete from reader where username = ?";
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, username);

            rows = pst.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rows;
    }

    public int updateInfo(Reader reader) {
        Connection conn = null;
        int rows = 0;
        String sql = null;

        try {
            conn = super.getConnection();
            sql = "update reader set username=?, name=?, sex=?, mail=?,grade=?,tel=?,classnum=? where username = ?";
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, reader.getUsername());
            pst.setString(2, reader.getName());
            pst.setString(3, reader.getSex());
            pst.setString(4, reader.getMail());
            pst.setInt(5, reader.getGrade());
            pst.setString(6, reader.getTel());
            pst.setInt(7, reader.getClassnum());


            rows = pst.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows;
    }
}
