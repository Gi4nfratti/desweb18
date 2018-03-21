package service;

import dao.OlimpiadaDAO;
import model.Olimpiada;

public class OlimpiadaService {
	
	OlimpiadaDAO olimpiadaDAO = new OlimpiadaDAO();
	
	public void criar(Olimpiada olimpiada) {
		olimpiadaDAO.criar(olimpiada);
	}

	public void atualizar(Olimpiada olimpiada) {
		olimpiadaDAO.atualiza(olimpiada);
	}

	public void excluir(Olimpiada olimpiada) {
		olimpiadaDAO.excluir(olimpiada);
	}

	public void carregar(Olimpiada olimpiada) {
		olimpiadaDAO.carregar(olimpiada);
	}
}
