/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.persistence.NamedQuery;
import javax.persistence.Query;

import modelo.Compralivro;

/**
 *
 * @author aluno
 */
public class CompralivroDAO extends GenericDAO<Compralivro, Integer>{
    public CompralivroDAO(){
        super(Compralivro.class);
    }
    
    
}
