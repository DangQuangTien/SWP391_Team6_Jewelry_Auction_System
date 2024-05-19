/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import entity.user.User;
import entity.user.ValuationRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import utils.DBUtils;

/**
 *
 * @author User
 */
public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public UserDTO checkLogin(String username, String password) {
        String query = "SELECT * FROM USERS WHERE USERNAME = ? AND PASSWORD = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getString("USERNAME"), rs.getString("PASSWORD"), rs.getInt("IS_ADMIN"));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    public User getInformation(String username) {
        String query = "SELECT * FROM USERS WHERE USERNAME = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getString(10),
                        rs.getInt(11));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    public boolean sendValuationRequest(String name, String email, String phoneNumber, String communication, String photos, String userID) {
        String query = "INSERT INTO VALUATION ([NAME], EMAIL, PHONENUMBER, COMMUNICATION, PHOTOS, USERID) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, communication);
            ps.setString(5, photos);
            ps.setString(6, userID);
            int result = ps.executeUpdate();
            return result > 0;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return false;
    }
    
    public ArrayList<ValuationRequest> displayValuationRequest(){
        ArrayList<ValuationRequest> listRequest = new ArrayList<>();
        String query = "SELECT * FROM VALUATION";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                ValuationRequest valuation = new ValuationRequest();
                valuation.setName(rs.getString(2));
                valuation.setEmail(rs.getString(3));
                valuation.setPhoneNumber(rs.getString(4));
                valuation.setCommunication(rs.getString(5));
                valuation.setPhotos(rs.getString(6));
                valuation.setUserID(rs.getString(7));
                valuation.setStatus(rs.getInt(8));
                listRequest.add(valuation);
            }
            return  listRequest;
        } catch (Exception ex){
            ex.getMessage();
        }
        return null;
    }
}
