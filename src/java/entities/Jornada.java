/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
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
 * @author JAVI
 */
@Entity
@Table(name = "JORNADA")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jornada.findAll", query = "SELECT j FROM Jornada j")
    , @NamedQuery(name = "Jornada.findByIdjornada", query = "SELECT j FROM Jornada j WHERE j.idjornada = :idjornada")
    , @NamedQuery(name = "Jornada.findByNombre", query = "SELECT j FROM Jornada j WHERE j.nombre = :nombre")
    , @NamedQuery(name = "Jornada.findByFechainicio", query = "SELECT j FROM Jornada j WHERE j.fechainicio = :fechainicio")
    , @NamedQuery(name = "Jornada.findByFechafin", query = "SELECT j FROM Jornada j WHERE j.fechafin = :fechafin")})
public class Jornada implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "IDJORNADA")
    private Short idjornada;
    @Column(name = "NOMBRE")
    private String nombre;
    @Column(name = "FECHAINICIO")
    private String fechainicio;
    @Column(name = "FECHAFIN")
    private String fechafin;
    @OneToMany(mappedBy = "idjornada")
    private List<Partido> partidoList;

    public Jornada() {
    }

    public Jornada(Short idjornada) {
        this.idjornada = idjornada;
    }

    public Short getIdjornada() {
        return idjornada;
    }

    public void setIdjornada(Short idjornada) {
        this.idjornada = idjornada;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(String fechainicio) {
        this.fechainicio = fechainicio;
    }

    public String getFechafin() {
        return fechafin;
    }

    public void setFechafin(String fechafin) {
        this.fechafin = fechafin;
    }

    @XmlTransient
    public List<Partido> getPartidoList() {
        return partidoList;
    }

    public void setPartidoList(List<Partido> partidoList) {
        this.partidoList = partidoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idjornada != null ? idjornada.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jornada)) {
            return false;
        }
        Jornada other = (Jornada) object;
        if ((this.idjornada == null && other.idjornada != null) || (this.idjornada != null && !this.idjornada.equals(other.idjornada))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Jornada[ idjornada=" + idjornada + " ]";
    }
    
}
