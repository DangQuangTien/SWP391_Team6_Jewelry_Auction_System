/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author T14
 */
@Entity
@Table(name = "valuation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Valuation.findAll", query = "SELECT v FROM Valuation v"),
    @NamedQuery(name = "Valuation.findByValuationId", query = "SELECT v FROM Valuation v WHERE v.valuationId = :valuationId"),
    @NamedQuery(name = "Valuation.findByName", query = "SELECT v FROM Valuation v WHERE v.name = :name"),
    @NamedQuery(name = "Valuation.findByEmail", query = "SELECT v FROM Valuation v WHERE v.email = :email"),
    @NamedQuery(name = "Valuation.findByPhonenumber", query = "SELECT v FROM Valuation v WHERE v.phonenumber = :phonenumber"),
    @NamedQuery(name = "Valuation.findByCommunication", query = "SELECT v FROM Valuation v WHERE v.communication = :communication"),
    @NamedQuery(name = "Valuation.findByDescription", query = "SELECT v FROM Valuation v WHERE v.description = :description"),
    @NamedQuery(name = "Valuation.findByPhotos", query = "SELECT v FROM Valuation v WHERE v.photos = :photos"),
    @NamedQuery(name = "Valuation.findByStatus", query = "SELECT v FROM Valuation v WHERE v.status = :status")})
public class Valuation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "valuationId")
    private String valuationId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "phonenumber")
    private String phonenumber;
    @Size(max = 100)
    @Column(name = "communication")
    private String communication;
    @Size(max = 2147483647)
    @Column(name = "description")
    private String description;
    @Size(max = 255)
    @Column(name = "photos")
    private String photos;
    @Column(name = "status")
    private Boolean status;
    @JoinColumn(name = "memberId", referencedColumnName = "memberID")
    @ManyToOne
    private Member1 memberId;
    @OneToMany(mappedBy = "valuationId")
    private Collection<Jewelry> jewelryCollection;

    public Valuation() {
    }

    public Valuation(String valuationId) {
        this.valuationId = valuationId;
    }

    public Valuation(String valuationId, String name, String email, String phonenumber) {
        this.valuationId = valuationId;
        this.name = name;
        this.email = email;
        this.phonenumber = phonenumber;
    }

    public String getValuationId() {
        return valuationId;
    }

    public void setValuationId(String valuationId) {
        this.valuationId = valuationId;
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

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
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

    public String getPhotos() {
        return photos;
    }

    public void setPhotos(String photos) {
        this.photos = photos;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Member1 getMemberId() {
        return memberId;
    }

    public void setMemberId(Member1 memberId) {
        this.memberId = memberId;
    }

    @XmlTransient
    public Collection<Jewelry> getJewelryCollection() {
        return jewelryCollection;
    }

    public void setJewelryCollection(Collection<Jewelry> jewelryCollection) {
        this.jewelryCollection = jewelryCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (valuationId != null ? valuationId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Valuation)) {
            return false;
        }
        Valuation other = (Valuation) object;
        if ((this.valuationId == null && other.valuationId != null) || (this.valuationId != null && !this.valuationId.equals(other.valuationId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Valuation[ valuationId=" + valuationId + " ]";
    }
    
}
