/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jpautil;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
//Para corregir un fallo en estas dos lineas tenemos que añadir en libraries las librerias:
//Persistence(...) y Oracle

/**
 *
 * @author paco
 */
public class JPAUtil {
        private static final EntityManagerFactory emf;
    static{
        try{
            emf=Persistence.createEntityManagerFactory("LigaPorra2019JPAPU");
        } catch (Throwable ex) {
            System.err.println("Error al crear SessionFactoty."+ ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    public static EntityManagerFactory getEntityManagerFactory(){
        return emf;
    }
}

