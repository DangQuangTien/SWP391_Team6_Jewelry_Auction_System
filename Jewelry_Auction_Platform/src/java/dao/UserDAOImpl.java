/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import entity.product.Category;
import entity.product.Jewelry;
import entity.request_shipment.RequestShipment;
import entity.valuation.Valuation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
                val.setStatus_evaluate(rs.getInt(9));
                val.setStatus_shipment(rs.getInt(10));
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

    @Override
    public boolean insertJewelry(String category, String jewelryName, String artist, String circa, String material, String dial, String braceletMaterial, String caseDimensions, String braceletSize, String serialNumber, String referenceNumber, String caliber, String movement, String condition, String metal, String gemstones, String measurements, String weight, String stamped, String ringSize, String minPrice, String maxPrice, String valuationID) {
        String query = "INSERT INTO Jewelry (categoryID, jewelryName, artist, circa, material, dial, braceletMaterial, caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, [condition], metal, gemstones, measurements, [weight], stamped, ringSize, minPrice, maxPrice, valuationId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try ( Connection conn = DBUtils.getConnection();  PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, category);
            ps.setString(2, jewelryName);
            ps.setString(3, artist);
            ps.setString(4, circa);
            ps.setString(5, material);
            ps.setString(6, dial);
            ps.setString(7, braceletMaterial);
            ps.setString(8, caseDimensions);
            ps.setString(9, braceletSize);
            ps.setString(10, serialNumber);
            ps.setString(11, referenceNumber);
            ps.setString(12, caliber);
            ps.setString(13, movement);
            ps.setString(14, condition);
            ps.setString(15, metal);
            ps.setString(16, gemstones);
            ps.setString(17, measurements);
            ps.setString(18, weight);
            ps.setString(19, stamped);
            ps.setString(20, ringSize);
            ps.setString(21, minPrice);
            ps.setString(22, maxPrice);
            ps.setString(23, valuationID);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Jewelry> getJewelryByUserID(String userID) {
        List<Jewelry> jewelryList = new ArrayList<>();
        String query = "SELECT j.* FROM Jewelry j "
                + "JOIN Valuation v ON j.valuationID = v.valuationID "
                + "JOIN [Member] m ON v.memberID = m.memberID "
                + "WHERE m.userID = ?";
        try ( Connection conn = DBUtils.getConnection();  PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, userID);
            try ( ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Jewelry jewelry = new Jewelry();
                    jewelry.setJewelryID(rs.getString("jewelryID"));
                    jewelry.setCategoryName(rs.getString("categoryID"));
                    jewelry.setJewelryName(rs.getString("jewelryName"));
                    jewelry.setArtist(rs.getString("artist"));
                    jewelry.setCirca(rs.getString("circa"));
                    jewelry.setMaterial(rs.getString("material"));
                    jewelry.setDial(rs.getString("dial"));
                    jewelry.setBraceletMaterial(rs.getString("braceletMaterial"));
                    jewelry.setCaseDimensions(rs.getString("caseDimensions"));
                    jewelry.setBraceletSize(rs.getString("braceletSize"));
                    jewelry.setSerialNumber(rs.getString("serialNumber"));
                    jewelry.setReferenceNumber(rs.getString("referenceNumber"));
                    jewelry.setCaliber(rs.getString("caliber"));
                    jewelry.setMovement(rs.getString("movement"));
                    jewelry.setCondition(rs.getString("condition"));
                    jewelry.setMetal(rs.getString("metal"));
                    jewelry.setGemstones(rs.getString("gemstones"));
                    jewelry.setMeasurements(rs.getString("measurements"));
                    jewelry.setWeight(rs.getString("weight"));
                    jewelry.setStamped(rs.getString("stamped"));
                    jewelry.setRingSize(rs.getString("ringSize"));
                    jewelry.setMinPrice(rs.getString("minPrice"));
                    jewelry.setMaxPrice(rs.getString("maxPrice"));
                    jewelry.setValuationId(rs.getString("valuationID"));
                    jewelryList.add(jewelry);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return jewelryList;
    }

    @Override
    public List<RequestShipment> displayRequestShipment(String userID) {
        String query = "select n.notificationID, n.content from Notification n, Valuation v, Users u, Member m where u.userID = ? and n.valuationID = v.valuationID and u.userID = m.userID";
        List<RequestShipment> listRequestShipment = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                RequestShipment request = new RequestShipment();
                request.setId(rs.getString(1));
                request.setContent(rs.getString(2));
                listRequestShipment.add(request);
            }
            return listRequestShipment;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    @Override
    public boolean requestShipment(String valuationID, String content) {
        String query = "Insert Into Notification (valuationID, content) values (?, ?);";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, valuationID);
            ps.setString(2, content);
            int result = ps.executeUpdate();
            return result > 0;

        } catch (ClassNotFoundException | SQLException ex) {
            ex.getMessage();
        }
        return false;
    }

    @Override
    public boolean confirmReceipt(String valuationID) {
        return false;
    }

}
