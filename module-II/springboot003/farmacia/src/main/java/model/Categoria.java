package model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tb_categoria")
public class Categoria {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull(message = "Obrigaatorio definir se precisa de prescricao ou nao")
    private Boolean presc;

    @NotNull(message = "Obrigatorio definir idade")
    private String adulto;

    @NotNull(message = "Descricao é obrigatório!")
	@Size(min = 5)
	private String descricao;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean isPresc() {
        return this.presc;
    }

    public Boolean getPresc() {
        return this.presc;
    }

    public void setPresc(Boolean presc) {
        this.presc = presc;
    }

    public String getAdulto() {
        return this.adulto;
    }

    public void setAdulto(String adulto) {
        this.adulto = adulto;
    }
    

    public String getDescricao() {
        return this.descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

}
