/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JAVI
 */
@Entity
@Table(name = "PORRA")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Porra.findAll", query = "SELECT p FROM Porra p")
    , @NamedQuery(name = "Porra.findByDni", query = "SELECT p FROM Porra p WHERE p.porraPK.dni = :dni")
    , @NamedQuery(name = "Porra.findByIdpartido", query = "SELECT p FROM Porra p WHERE p.porraPK.idpartido = :idpartido")
    , @NamedQuery(name = "Porra.findByGoleslocal", query = "SELECT p FROM Porra p WHERE p.goleslocal = :goleslocal")
    , @NamedQuery(name = "Porra.findByGolesvisitante", query = "SELECT p FROM Porra p WHERE p.golesvisitante = :golesvisitante")})
public class Porra implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected PorraPK porraPK;
    @Column(name = "GOLESLOCAL")
    private Short goleslocal;
    @Column(name = "GOLESVISITANTE")
    private Short golesvisitante;
    @JoinColumn(name = "IDPARTIDO", referencedColumnName = "IDPARTIDO", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Partido partido;
    @JoinColumn(name = "DNI", referencedColumnName = "DNI", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Usuario usuario;

    public Porra() {
    }

    public Porra(PorraPK porraPK) {
        this.porraPK = porraPK;
    }

    public Porra(String dni, short idpartido) {
        this.porraPK = new PorraPK(dni, idpartido);
    }

    public PorraPK getPorraPK() {
        return porraPK;
    }

    public void setPorraPK(PorraPK porraPK) {
        this.porraPK = porraPK;
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

    public Partido getPartido() {
        return partido;
    }

    public void setPartido(Partido partido) {
        this.partido = partido;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (porraPK != null ? porraPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Porra)) {
            return false;
        }
        Porra other = (Porra) object;
        if ((this.porraPK == null && other.porraPK != null) || (this.porraPK != null && !this.porraPK.equals(other.porraPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Porra[ porraPK=" + porraPK + " ]";
    }
    
}
