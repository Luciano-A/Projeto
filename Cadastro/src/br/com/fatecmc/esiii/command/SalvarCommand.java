package br.com.fatecmc.esiii.command;

import br.com.fatecmc.esiii.dominio.EntidadeDominio;

public class SalvarCommand extends AbstractCommand {

	public String execute(EntidadeDominio entidade) throws Exception {
			
		return fachada.salvar(entidade);
	}
}
