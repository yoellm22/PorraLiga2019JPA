/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "PARTIDO")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Partido.findAll", query = "SELECT p FROM Partido p")
    , @NamedQuery(name = "Partido.findByIdpartido", query = "SELECT p FROM Partido p WHERE p.idpartido = :idpartido")
    , @NamedQuery(name = "Partido.findByFecha", query = "SELECT p FROM Partido p WHERE p.fecha = :fecha")
    , @NamedQuery(name = "Partido.findByHora", query = "SELECT p FROM Partido p WHERE p.hora = :hora")
    , @NamedQuery(name = "Partido.findByGoleslocal", query = "SELECT p FROM Partido p WHERE p.goleslocal = :goleslocal")
    , @NamedQuery(name = "Partido.findByGolesvisitante", query = "SELECT p FROM Partido p WHERE p.golesvisitante = :golesvisitante")})
public class Partido implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "IDPARTIDO")
    private Integer idpartido;
    @Column(name = "FECHA")
    private String fecha;
    @Column(name = "HORA")
    private String hora;
    @Column(name = "GOLESLOCAL")
    private Short goleslocal;
    @Column(name = "GOLESVISITANTE")
    private Short golesvisitante;
    @JoinColumn(name = "LOCAL", referencedColumnName = "IDEQUIPO")
    @ManyToOne
    private Equipo local;
    @JoinColumn(name = "VISITANTE", referencedColumnName = "IDEQUIPO")
    @ManyToOne
    private Equipo visitante;
    @JoinColumn(name = "IDJORNADA", referencedColumnName = "IDJORNADA")
    @ManyToOne
    private Jornada idjornada;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "partido")
    private List<Porra> porraList;

    public Partido() {
    }

    public Partido(Integer idpartido) {
        this.idpartido = idpartido;
    }

    public Integer getIdpartido() {
        return idpartido;
    }

    public void setIdpartido(Integer idpartido) {
        this.idpartido = idpartido;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Short getGoleslocal() {
        return goleslocal;
    }

    public void setGoleslocal(Short goleslocal) {
        this.goleslocal = goleslocal;
    }

    public Short getGolesvisitante() {
        return golesvisitante;
    }

    public void setGolesvisitante(Short golesvisitante) {
        this.golesvisitante = golesvisitante;
    }

    public Equipo getLocal() {
        return local;
    }

    public void setLocal(Equipo local) {
        this.local = local;
    }

    public Equipo getVisitante() {
        return visitante;
    }

    public void setVisitante(Equipo visitante) {
        this.visitante = visitante;
    }

    public Jornada getIdjornada() {
        return idjornada;
    }

    public void setIdjornada(Jornada idjornada) {
        this.idjornada = idjornada;
    }

    @XmlTransient
    public List<Porra> getPorraList() {
        return porraList;
    }

    public void setPorraList(List<Porra> porraList) {
        this.porraList = porraList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpartido != null ? idpartido.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Partido)) {
            return false;
        }
        Partido other = (Partido) object;
        if ((this.idpartido == null && other.idpartido != null) || (this.idpartido != null && !this.idpartido.equals(other.idpartido))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Partido[ idpartido=" + idpartido + " ]";
    }
    
}
