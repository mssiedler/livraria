/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author marcelosiedler
 */
@Entity
@Table(name = "compralivro")
@NamedQueries({
    @NamedQuery(name = "Compralivro.findAll", query = "SELECT c FROM Compralivro c")})
public class Compralivro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "qtdade")
    private Integer qtdade;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "valorunitario")
    private Float valorunitario;
    @JoinColumn(name = "compra", referencedColumnName = "id")
    @ManyToOne
    private Compra compra;
    @JoinColumn(name = "livro", referencedColumnName = "id")
    @ManyToOne
    private Livro livro;

    public Compralivro() {
    }

    public Compralivro(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQtdade() {
        return qtdade;
    }

    public void setQtdade(Integer qtdade) {
        this.qtdade = qtdade;
    }

    public Float getValorunitario() {
        return valorunitario;
    }

    public void setValorunitario(Float valorunitario) {
        this.valorunitario = valorunitario;
    }

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Livro getLivro() {
        return livro;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compralivro)) {
            return false;
        }
        Compralivro other = (Compralivro) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Compralivro[ id=" + id + " ]";
    }
    
}
