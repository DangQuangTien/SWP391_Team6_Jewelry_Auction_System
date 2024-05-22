/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity.member;

import java.util.Date;

/**
 *
 * @author User
 */
public class Member {

    private String memberID;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String gender;
    private Date DOB;
    private String avatar;

    public Member() {
    }

    public Member(String memberID, String firstName, String lastName, String phoneNumber, String gender, Date DOB, String avatar) {
        this.memberID = memberID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.DOB = DOB;
        this.avatar = avatar;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public String getAvartar() {
        return avatar;
    }

    public void setAvartar(String avartar) {
        this.avatar = avartar;
    }

}
