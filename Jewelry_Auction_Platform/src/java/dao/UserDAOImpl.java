/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import entity.product.Category;
import entity.valuation.Valuation;
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
        String query = "select tk.userID, tk.username, vt.role_name from Users tk, [Role] vt where vt.roleID = tk.roleID and tk.username = ? and tk.password = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    @Override
    public ArrayList<Valuation> displayValuationRequest() {
        ArrayList<Valuation> lst = new ArrayList<>();
        String query = "SELECT * FROM VALUATION";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Valuation val = new Valuation();
                val.setValuationID(rs.getString(1));
                val.setName(rs.getString(2));
                val.setEmail(rs.getString(3));
                val.setPhone(rs.getString(4));
                val.setCommunication(rs.getString(5));
                val.setDescription(rs.getString(6));
                val.setPhoto(rs.getString(7));
                val.setStatus(rs.getInt(9));
                lst.add(val);
            }
            return lst;
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

        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    @Override
    public boolean insertValuationRequest(String name, String email, String phone, String communicationMethod, String photos, String description, String username) {
        boolean flag = true;
        String query = "insert into valuation ([name], email, phonenumber, communication, photos, [description], memberId) values (?, ?, ?, ?, ?, ?, (select m.memberID from Users u, [Member] m where u.userID = m.userID and u.username = ?))";
        if (username.equals("Guest")) {
            query = "insert into valuation ([name], email, phonenumber, communication, photos, [description]) values (?, ?, ?, ?, ?, ?)";
            flag = false;
        }
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, communicationMethod);
            ps.setString(5, photos);
            ps.setString(6, description);
            if (flag != false) {
                ps.setString(7, username);
            }
            int result = ps.executeUpdate();
            return result > 0;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return false;
    }
}
