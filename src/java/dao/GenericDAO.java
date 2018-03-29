/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.io.Serializable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

//T = classe, I = tipo
public abstract class GenericDAO<T, I extends Serializable> {


   protected EntityManager em;

   private Class<T> persistedClass;
        
   protected GenericDAO()  {
        EntityManagerFactory emf;
       try {
           emf = Conexao.getConexao();
           em = emf.createEntityManager();
       } catch (Exception ex) {
           Logger.getLogger(GenericDAO.class.getName()).log(Level.SEVERE, null, ex);
           Logger.getLogger("Não foi possível realizar a conexão com a unidade de persistência. Verifique a conexão");
           
       }
        
    }
   
   

   protected GenericDAO(Class<T> persistedClass) {
       this();
       this.persistedClass = persistedClass;
   }

   public Boolean incluir( T obj) {
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
             Logger.getLogger(GenericDAO.class.getName()).log(Level.SEVERE, null, e);
           Logger.getLogger("Erro ao incluir, veja o código acima");
           
            em.getTransaction().rollback();
           
            retorno = false;
            throw e;
        } finally {
            //em.close();
            
        }
        return retorno;
   }

   public Boolean alterar( T obj) {
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
             Logger.getLogger(GenericDAO.class.getName()).log(Level.SEVERE, null, e);
          Logger.getLogger("Erro ao alterar, veja o código acima"); 
            em.getTransaction().rollback();
            retorno = false;
            throw e;
        } finally {
            // em.close();
        }
        return retorno;
   }

   public Boolean excluir(T obj) {
       Boolean retorno;
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
             Logger.getLogger(GenericDAO.class.getName()).log(Level.SEVERE, null, e);
             Logger.getLogger("Erro ao excluir, veja o código acima"); 
          
            em.getTransaction().rollback();
            retorno = false;
        } finally {
            //em.close();
        }
        return retorno;
   }

   public List<T> listar() {
      return em.createNamedQuery(persistedClass.getSimpleName()+".findAll").getResultList();
   }
   
   public List<T> listar(String filtro) throws Exception{
        return em.createNamedQuery(persistedClass.getSimpleName()+".findFilter").setParameter("filtro","%" + filtro + "%").getResultList();
    }

   public T buscarPorChavePrimaria(I chaveprimaria) {
       return em.find(persistedClass, chaveprimaria);
   }
   
   public void fecharConexao() {
        Conexao.closeConexao();
    }
   
   
   
   
   
}
