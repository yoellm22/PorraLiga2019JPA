/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author JAVI
 */
@Embeddable
public class PorraPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "DNI")
    private String dni;
    @Basic(optional = false)
    @Column(name = "IDPARTIDO")
    private short idpartido;

    public PorraPK() {
    }

    public PorraPK(String dni, short idpartido) {
        this.dni = dni;
        this.idpartido = idpartido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public short getIdpartido() {
        return idpartido;
    }

    public void setIdpartido(short idpartido) {
        this.idpartido = idpartido;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dni != null ? dni.hashCode() : 0);
        hash += (int) idpartido;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PorraPK)) {
            return false;
        }
        PorraPK other = (PorraPK) object;
        if ((this.dni == null && other.dni != null) || (this.dni != null && !this.dni.equals(other.dni))) {
            return false;
        }
        if (this.idpartido != other.idpartido) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.PorraPK[ dni=" + dni + ", idpartido=" + idpartido + " ]";
    }
    
}
