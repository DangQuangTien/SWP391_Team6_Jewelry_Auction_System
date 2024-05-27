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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public interface UserDao {

    UserDTO checkLogin(String username, String password);
    ArrayList<Category> listCategory ();
    boolean insertValuationRequest(String name, String email, String phone, String communicationMethod, String photos, String description, String memberID);
    ArrayList<Valuation> displayValuationRequest();
    public boolean insertJewelry(String category, String jewelryName, String artist, 
                             String circa, String material, String dial, 
                             String braceletMaterial, String caseDimensions, 
                             String braceletSize, String serialNumber, 
                             String referenceNumber, String caliber, String movement, 
                             String condition, String metal, String gemstones, 
                             String measurements, String weight, String stamped, 
                             String ringSize, String minPrice, String maxPrice, 
                             String valuationID);
    List<Jewelry> getJewelryByUserID(String userID);
    boolean requestShipment(String valuationID, String content);
    List<RequestShipment> displayRequestShipment(String userID);
    boolean confirmReceipt(String valuationID);
}
