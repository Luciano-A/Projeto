package br.com.fatecmc.esiii.dao;

import java.util.List;
import br.com.fatecmc.esiii.dominio.*;

public interface IDAO {
	
	public void salvar(EntidadeDominio entidade)throws Exception ;
	public void alterar(EntidadeDominio entidade)throws Exception;
	public void excluir(EntidadeDominio entidade)throws Exception;
	public List<EntidadeDominio> consultar(EntidadeDominio entidade) throws Exception;
	public EntidadeDominio consultaUnica (EntidadeDominio entidade) throws Exception;
}
