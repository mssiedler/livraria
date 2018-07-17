/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.persistence.NamedQuery;
import javax.persistence.Query;
import modelo.Autor;
import modelo.Cliente;

/**
 *
 * @author aluno
 */
public class ClienteDAO extends GenericDAO<Cliente, Integer>{
    public ClienteDAO(){
        super(Cliente.class);
    }
    
    public Cliente logar(String email, String senha)
    {
        Cliente retorno;
        Query q = em.createNamedQuery("Cliente.login").setParameter("email", email).setParameter("senha",senha);
        try {
            retorno = (Cliente)q.getSingleResult();
            
        } catch (Exception e) {
            retorno =  null;
        }
        return retorno;
    }
}
