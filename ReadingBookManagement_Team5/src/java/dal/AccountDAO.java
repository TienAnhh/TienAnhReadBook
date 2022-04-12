/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import model.account;
import model.book;


/**
 *
 * @author TISD
 */
public class AccountDAO {

    static Connection con = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

//    public List<Account> getAllAccount() {
//        List<Account> list = new ArrayList<>();
//        String query = "select * from Account";
//        try {
//            con = new DBContext().getConnection();
//            ps = con.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    
    public static boolean checkLogin(String userName, String password) throws Exception {
        boolean isValid = false;
        try {
            String query = "select * from Account where username = ? and password = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            //thuc thi cau lenh truy van den SQL
            rs = ps.executeQuery();
            //truong hop dang nhap thanh cong
            if (rs.next()) {
                isValid = true;
            } else {
                isValid = false;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return isValid;
    }
    
    public static boolean checkLoginAdmin(String userName, String password) throws Exception{
        boolean isValid = false;
        try{
            String query = "select * from adminController where adminAccount = ? and adminPass = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                isValid = true;
            } else {
                isValid = false;
            }
        } catch(Exception ex){
            ex.printStackTrace();
        }
        return isValid;
    }
    
    public List<book> listBookInfo() {
        List<book> list = new ArrayList<>();
        String query = "SELECT * FROM Book";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
            
        }
        return list;
    }
    
    public static void main(String[] args) throws Exception {
        AccountDAO ad = new AccountDAO();
//        List<Account> li = ad.getAllAccount();
    }
}
