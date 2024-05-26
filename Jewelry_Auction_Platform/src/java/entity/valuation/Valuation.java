/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity.valuation;

/**
 *
 * @author User
 */
public class Valuation {

    private String valuationID;
    private String name;
    private String email;
    private String phone;
    private String communication;
    private String description;
    private String photo;
    private int status;

    public Valuation() {
    }

    public Valuation(String valuationID, String name, String email, String phone, String communication, String description, String photo, int status) {
        this.valuationID = valuationID;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.communication = communication;
        this.description = description;
        this.photo = photo;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCommunication() {
        return communication;
    }

    public void setCommunication(String communication) {
        this.communication = communication;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
