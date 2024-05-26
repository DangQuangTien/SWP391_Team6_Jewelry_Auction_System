/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author T14
 */
@Entity
@Table(name = "Manager")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Manager.findAll", query = "SELECT m FROM Manager m"),
    @NamedQuery(name = "Manager.findByManagerID", query = "SELECT m FROM Manager m WHERE m.managerID = :managerID"),
    @NamedQuery(name = "Manager.findByFullName", query = "SELECT m FROM Manager m WHERE m.fullName = :fullName")})
public class Manager implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "managerID")
    private String managerID;
    @Size(max = 255)
    @Column(name = "fullName")
    private String fullName;
    @JoinColumn(name = "userID", referencedColumnName = "userID")
    @ManyToOne(optional = false)
    private Users userID;

    public Manager() {
    }

    public Manager(String managerID) {
        this.managerID = managerID;
    }

    public String getManagerID() {
        return managerID;
    }

    public void setManagerID(String managerID) {
        this.managerID = managerID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Users getUserID() {
        return userID;
    }

    public void setUserID(Users userID) {
        this.userID = userID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (managerID != null ? managerID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Manager)) {
            return false;
        }
        Manager other = (Manager) object;
        if ((this.managerID == null && other.managerID != null) || (this.managerID != null && !this.managerID.equals(other.managerID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Manager[ managerID=" + managerID + " ]";
    }
    
}
