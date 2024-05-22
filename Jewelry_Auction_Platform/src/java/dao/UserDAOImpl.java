/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import entity.product.Category;
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
public class UserDAOImpl implements UserDao {
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    @Override
    public UserDTO checkLogin(String username, String password) {
        String query = "select tk.userID, tk.username, tk.password, vt.role_name from Users tk, [Role] vt where vt.roleID = tk.roleID and tk.username = ? and tk.password = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }
    
    
    
    public boolean sendValuationRequest(String name, String email, String phoneNumber, String communication, String description, String photos, String userID) {
        String query = "INSERT INTO VALUATION ([NAME], EMAIL, PHONENUMBER, COMMUNICATION, [DESCRIPTION], PHOTOS, USERID) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, communication);
            ps.setString(5, description);
            ps.setString(6, photos);
            ps.setString(7, userID);
            int result = ps.executeUpdate();
            return result > 0;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return false;
    }
    
    public ArrayList<ValuationRequest> displayValuationRequest() {
        ArrayList<ValuationRequest> listRequest = new ArrayList<>();
        String query = "SELECT * FROM VALUATION";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                ValuationRequest valuation = new ValuationRequest();
                valuation.setName(rs.getString(2));
                valuation.setEmail(rs.getString(3));
                valuation.setPhoneNumber(rs.getString(4));
                valuation.setCommunication(rs.getString(5));
                valuation.setDescription(rs.getString(6));
                valuation.setPhotos(rs.getString(7));
                valuation.setUserID(rs.getString(8));
                valuation.setStatus(rs.getInt(9));
                listRequest.add(valuation);
            }
            return listRequest;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    @Override
    public ArrayList<Category> listCategory() {
        ArrayList<Category> listCategory = new ArrayList<>();
        String query = "SELECT * FROM CATEGORY";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setCategoryID(rs.getString(1));
                category.setCategoryName(rs.getString(2));
                listCategory.add(category);
            }
            return listCategory;
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean insertValuationRequest(String name, String email, String phone, String communicationMethod, String photos, String description) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
