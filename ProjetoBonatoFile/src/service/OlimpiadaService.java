package service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.OlimpiadaDAO;
import model.Olimpiada;

public class OlimpiadaService {
	OlimpiadaDAO olimpiadaDao = new OlimpiadaDAO();
	
	public void criar(Olimpiada olimpiada) throws SQLException {
		olimpiadaDao.criar(olimpiada);
	}

	public void atualizar(Olimpiada olimpiada) throws SQLException {
		olimpiadaDao.atualizar(olimpiada);
	}

	public void excluir(int id) throws SQLException, IOException {
		olimpiadaDao.excluir(id);
	}

	public Olimpiada carregar(int id){
		return olimpiadaDao.carregar(id);
	}
	
	public ArrayList<Olimpiada> listarOlimpiada(){
		return olimpiadaDao.listarOlimpiada();
	}

	public ArrayList<Olimpiada> listarOlimpiada(String chave) {
		return olimpiadaDao.listarOlimpiada(chave);
	}
	
	

	
}
