/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author MR-ROBOT
 */
@Entity
@Table(name = "Roli")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Roli.findAll", query = "SELECT r FROM Roli r")
    , @NamedQuery(name = "Roli.findByRoliID", query = "SELECT r FROM Roli r WHERE r.roliID = :roliID")
    , @NamedQuery(name = "Roli.findByEmertimi", query = "SELECT r FROM Roli r WHERE r.emertimi = :emertimi")})
public class Roli implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "RoliID")
    private Integer roliID;
    @Column(name = "Emertimi")
    private String emertimi;
    @OneToMany(mappedBy = "roliID")
    private Collection<Perdoruesi> perdoruesiCollection;

    public Roli() {
    }

    public Roli(Integer roliID) {
        this.roliID = roliID;
    }

    public Integer getRoliID() {
        return roliID;
    }

    public void setRoliID(Integer roliID) {
        this.roliID = roliID;
    }

    public String getEmertimi() {
        return emertimi;
    }

    public void setEmertimi(String emertimi) {
        this.emertimi = emertimi;
    }

    @XmlTransient
    public Collection<Perdoruesi> getPerdoruesiCollection() {
        return perdoruesiCollection;
    }

    public void setPerdoruesiCollection(Collection<Perdoruesi> perdoruesiCollection) {
        this.perdoruesiCollection = perdoruesiCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (roliID != null ? roliID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Roli)) {
            return false;
        }
        Roli other = (Roli) object;
        if ((this.roliID == null && other.roliID != null) || (this.roliID != null && !this.roliID.equals(other.roliID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return getRoliID() + " " ;
    }
    
}
