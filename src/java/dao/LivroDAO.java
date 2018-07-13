/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Livro;

/**
 *
 * @author aluno
 */
public class LivroDAO extends GenericDAO<Livro, Integer>{
    public LivroDAO(){
        super(Livro.class);
    }
}
