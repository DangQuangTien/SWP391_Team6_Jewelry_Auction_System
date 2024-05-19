/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
}
