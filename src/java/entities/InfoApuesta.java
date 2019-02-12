/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author JAVI
 */
public class InfoApuesta {
    private Short goleslocal;
    private Short golesvisitante;
    private Short numeroapuestas;
    
    public InfoApuesta() { 
        
    }
    
    public InfoApuesta(short goleslocal, short golesvisitante, short numeroapuestas) {
        this.goleslocal = goleslocal;
        this.golesvisitante = golesvisitante;
        this.numeroapuestas = numeroapuestas;
    }
    
    public Short getGolesLocal() {
        return goleslocal;
    }

    public void setGolesLocal(Short goleslocal) {
        this.goleslocal = goleslocal;
    }
    
    public Short getGolesVisitante() {
        return golesvisitante;
    }

    public void setGolesVisitante(Short golesvisitante) {
        this.golesvisitante = golesvisitante;
    }
    
    public Short getNumeroApuestas() {
        return numeroapuestas;
    }

    public void setNumeroApuestas(Short numeroapuestas) {
        this.numeroapuestas = numeroapuestas;
    }
    
}
