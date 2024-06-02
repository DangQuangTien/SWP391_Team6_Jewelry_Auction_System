/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity.user;

/**
 *
 * @author User
 */
public class ValuationRequest {

    private String valuationID;
    private String name;
    private String email;
    private String phoneNumber;
    private String communication;
    private String description;
    private String photos;
    private String userID;
    private int status;
    

    public ValuationRequest() {
    }

    public ValuationRequest(String valuationID, String name, String email, String phoneNumber, String communication, String description, String photos, String userID, int status) {
        this.valuationID = valuationID;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.communication = communication;
        this.description = description;
        this.photos = photos;
        this.userID = userID;
        this.status = status;
    }

    public String getValuationID() {
        return valuationID;
    }

    public void setValuationID(String valuationID) {
        this.valuationID = valuationID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCommunication() {
        return communication;
    }

    public void setCommunication(String communication) {
        this.communication = communication;
    }

    public String getPhotos() {
        return photos;
    }

    public void setPhotos(String photos) {
        this.photos = photos;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
