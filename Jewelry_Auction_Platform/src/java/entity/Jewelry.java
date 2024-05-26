/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "Jewelry")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jewelry.findAll", query = "SELECT j FROM Jewelry j"),
    @NamedQuery(name = "Jewelry.findByJewelryID", query = "SELECT j FROM Jewelry j WHERE j.jewelryID = :jewelryID"),
    @NamedQuery(name = "Jewelry.findByCategoryID", query = "SELECT j FROM Jewelry j WHERE j.categoryID = :categoryID"),
    @NamedQuery(name = "Jewelry.findByCategoryName", query = "SELECT j FROM Jewelry j WHERE j.categoryName = :categoryName"),
    @NamedQuery(name = "Jewelry.findByJewelryCode", query = "SELECT j FROM Jewelry j WHERE j.jewelryCode = :jewelryCode"),
    @NamedQuery(name = "Jewelry.findByJewelryName", query = "SELECT j FROM Jewelry j WHERE j.jewelryName = :jewelryName"),
    @NamedQuery(name = "Jewelry.findByArtist", query = "SELECT j FROM Jewelry j WHERE j.artist = :artist"),
    @NamedQuery(name = "Jewelry.findByCirca", query = "SELECT j FROM Jewelry j WHERE j.circa = :circa"),
    @NamedQuery(name = "Jewelry.findByMaterial", query = "SELECT j FROM Jewelry j WHERE j.material = :material"),
    @NamedQuery(name = "Jewelry.findByDial", query = "SELECT j FROM Jewelry j WHERE j.dial = :dial"),
    @NamedQuery(name = "Jewelry.findByBraceletMaterial", query = "SELECT j FROM Jewelry j WHERE j.braceletMaterial = :braceletMaterial"),
    @NamedQuery(name = "Jewelry.findByCaseDimensions", query = "SELECT j FROM Jewelry j WHERE j.caseDimensions = :caseDimensions"),
    @NamedQuery(name = "Jewelry.findByBraceletSize", query = "SELECT j FROM Jewelry j WHERE j.braceletSize = :braceletSize"),
    @NamedQuery(name = "Jewelry.findBySerialNumber", query = "SELECT j FROM Jewelry j WHERE j.serialNumber = :serialNumber"),
    @NamedQuery(name = "Jewelry.findByReferenceNumber", query = "SELECT j FROM Jewelry j WHERE j.referenceNumber = :referenceNumber"),
    @NamedQuery(name = "Jewelry.findByCaliber", query = "SELECT j FROM Jewelry j WHERE j.caliber = :caliber"),
    @NamedQuery(name = "Jewelry.findByMovement", query = "SELECT j FROM Jewelry j WHERE j.movement = :movement"),
    @NamedQuery(name = "Jewelry.findByCondition", query = "SELECT j FROM Jewelry j WHERE j.condition = :condition"),
    @NamedQuery(name = "Jewelry.findByMetal", query = "SELECT j FROM Jewelry j WHERE j.metal = :metal"),
    @NamedQuery(name = "Jewelry.findByGemstones", query = "SELECT j FROM Jewelry j WHERE j.gemstones = :gemstones"),
    @NamedQuery(name = "Jewelry.findByMeasurements", query = "SELECT j FROM Jewelry j WHERE j.measurements = :measurements"),
    @NamedQuery(name = "Jewelry.findByWeight", query = "SELECT j FROM Jewelry j WHERE j.weight = :weight"),
    @NamedQuery(name = "Jewelry.findByStamped", query = "SELECT j FROM Jewelry j WHERE j.stamped = :stamped"),
    @NamedQuery(name = "Jewelry.findByRingSize", query = "SELECT j FROM Jewelry j WHERE j.ringSize = :ringSize"),
    @NamedQuery(name = "Jewelry.findByMinPrice", query = "SELECT j FROM Jewelry j WHERE j.minPrice = :minPrice"),
    @NamedQuery(name = "Jewelry.findByMaxPrice", query = "SELECT j FROM Jewelry j WHERE j.maxPrice = :maxPrice")})
public class Jewelry implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "jewelryID")
    private Integer jewelryID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "categoryID")
    private String categoryID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "categoryName")
    private String categoryName;
    @Size(max = 9)
    @Column(name = "jewelryCode")
    private String jewelryCode;
    @Size(max = 255)
    @Column(name = "jewelryName")
    private String jewelryName;
    @Size(max = 255)
    @Column(name = "artist")
    private String artist;
    @Size(max = 50)
    @Column(name = "circa")
    private String circa;
    @Size(max = 255)
    @Column(name = "material")
    private String material;
    @Size(max = 255)
    @Column(name = "dial")
    private String dial;
    @Size(max = 255)
    @Column(name = "braceletMaterial")
    private String braceletMaterial;
    @Size(max = 100)
    @Column(name = "caseDimensions")
    private String caseDimensions;
    @Size(max = 50)
    @Column(name = "braceletSize")
    private String braceletSize;
    @Size(max = 100)
    @Column(name = "serialNumber")
    private String serialNumber;
    @Size(max = 100)
    @Column(name = "referenceNumber")
    private String referenceNumber;
    @Size(max = 100)
    @Column(name = "caliber")
    private String caliber;
    @Size(max = 100)
    @Column(name = "movement")
    private String movement;
    @Size(max = 100)
    @Column(name = "condition")
    private String condition;
    @Size(max = 100)
    @Column(name = "metal")
    private String metal;
    @Size(max = 255)
    @Column(name = "gemstones")
    private String gemstones;
    @Size(max = 100)
    @Column(name = "measurements")
    private String measurements;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "weight")
    private BigDecimal weight;
    @Size(max = 100)
    @Column(name = "stamped")
    private String stamped;
    @Size(max = 50)
    @Column(name = "ringSize")
    private String ringSize;
    @Column(name = "minPrice")
    private BigDecimal minPrice;
    @Column(name = "maxPrice")
    private BigDecimal maxPrice;
    @JoinColumn(name = "valuationId", referencedColumnName = "valuationId")
    @ManyToOne
    private Valuation valuationId;

    public Jewelry() {
    }

    public Jewelry(Integer jewelryID) {
        this.jewelryID = jewelryID;
    }

    public Jewelry(Integer jewelryID, String categoryID, String categoryName) {
        this.jewelryID = jewelryID;
        this.categoryID = categoryID;
        this.categoryName = categoryName;
    }

    public Integer getJewelryID() {
        return jewelryID;
    }

    public void setJewelryID(Integer jewelryID) {
        this.jewelryID = jewelryID;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getJewelryCode() {
        return jewelryCode;
    }

    public void setJewelryCode(String jewelryCode) {
        this.jewelryCode = jewelryCode;
    }

    public String getJewelryName() {
        return jewelryName;
    }

    public void setJewelryName(String jewelryName) {
        this.jewelryName = jewelryName;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getCirca() {
        return circa;
    }

    public void setCirca(String circa) {
        this.circa = circa;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getDial() {
        return dial;
    }

    public void setDial(String dial) {
        this.dial = dial;
    }

    public String getBraceletMaterial() {
        return braceletMaterial;
    }

    public void setBraceletMaterial(String braceletMaterial) {
        this.braceletMaterial = braceletMaterial;
    }

    public String getCaseDimensions() {
        return caseDimensions;
    }

    public void setCaseDimensions(String caseDimensions) {
        this.caseDimensions = caseDimensions;
    }

    public String getBraceletSize() {
        return braceletSize;
    }

    public void setBraceletSize(String braceletSize) {
        this.braceletSize = braceletSize;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getReferenceNumber() {
        return referenceNumber;
    }

    public void setReferenceNumber(String referenceNumber) {
        this.referenceNumber = referenceNumber;
    }

    public String getCaliber() {
        return caliber;
    }

    public void setCaliber(String caliber) {
        this.caliber = caliber;
    }

    public String getMovement() {
        return movement;
    }

    public void setMovement(String movement) {
        this.movement = movement;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getMetal() {
        return metal;
    }

    public void setMetal(String metal) {
        this.metal = metal;
    }

    public String getGemstones() {
        return gemstones;
    }

    public void setGemstones(String gemstones) {
        this.gemstones = gemstones;
    }

    public String getMeasurements() {
        return measurements;
    }

    public void setMeasurements(String measurements) {
        this.measurements = measurements;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public String getStamped() {
        return stamped;
    }

    public void setStamped(String stamped) {
        this.stamped = stamped;
    }

    public String getRingSize() {
        return ringSize;
    }

    public void setRingSize(String ringSize) {
        this.ringSize = ringSize;
    }

    public BigDecimal getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(BigDecimal minPrice) {
        this.minPrice = minPrice;
    }

    public BigDecimal getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(BigDecimal maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Valuation getValuationId() {
        return valuationId;
    }

    public void setValuationId(Valuation valuationId) {
        this.valuationId = valuationId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jewelryID != null ? jewelryID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jewelry)) {
            return false;
        }
        Jewelry other = (Jewelry) object;
        if ((this.jewelryID == null && other.jewelryID != null) || (this.jewelryID != null && !this.jewelryID.equals(other.jewelryID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Jewelry[ jewelryID=" + jewelryID + " ]";
    }
    
}
