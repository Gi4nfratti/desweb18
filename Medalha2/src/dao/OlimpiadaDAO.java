package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Olimpiada;

public class OlimpiadaDAO {
	
	Olimpiada olimpiada;
	
		public void criar(Olimpiada olimpiada) {
			String sqlInsert = "INSERT INTO olimpiada(ouro, prata, bronze, nomePais, nomeModalidade, idAno) VALUES (?, ?, ?, ?, ?, ?)";
			try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
				stm.setInt(1, olimpiada.getOuro());
				stm.setInt(2, olimpiada.getPrata());
				stm.setInt(3, olimpiada.getBronze());
				stm.setString(4, olimpiada.getNomePais());
				stm.setString(5, olimpiada.getNomeModalidade());
				stm.setInt(6, olimpiada.getIdAno());
				stm.execute();
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();) {
					if (rs.next()) {
						olimpiada.setId(rs.getInt(1));
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	public void atualizar(Olimpiada olimpiada) throws SQLException{
		String sqlUpdate = "update olimpiada set nomeModalidade = ?, nomePais = ?, idAno = ?, ouro = ?, prata = ?, bronze = ? where id = ?";
		
		try(Connection con = ConnectionFactory.obtemConexao(); PreparedStatement stm = con.prepareStatement(sqlUpdate)){
			stm.setString(1, olimpiada.getNomeModalidade());
			stm.setString(2, olimpiada.getNomePais());
			stm.setInt(3, olimpiada.getIdAno());
			stm.setInt(4, olimpiada.getOuro());
			stm.setInt(5, olimpiada.getPrata());
			stm.setInt(6, olimpiada.getBronze());
			stm.setInt(7, olimpiada.getId());
			
			stm.execute();
		}
	}
	
	public void excluir(int id) throws IOException, NullPointerException {
		String sqlDelete = "DELETE FROM olimpiada WHERE id = ?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obtemConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
				stm.setInt(1, id);
				stm.execute();
			} catch (Exception e) {
				e.printStackTrace();
				throw new IOException();
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
			throw new IOException();
		}
	}



	public Olimpiada carregar(int id) {
		Olimpiada olimpiada = new Olimpiada();
		olimpiada.setId(id);
		String sqlSelect = "SELECT ouro, prata, bronze, nomePais, nomeModalidade, idAno FROM olimpiada WHERE olimpiada.id  = ?";
		try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, olimpiada.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					olimpiada.setOuro(rs.getInt("ouro"));
					olimpiada.setPrata(rs.getInt("prata"));
					olimpiada.setBronze(rs.getInt("bronze"));
					olimpiada.setNomeModalidade(rs.getString("nomeModalidade"));
					olimpiada.setNomePais(rs.getString("nomePais"));
					olimpiada.setIdAno(rs.getInt("idAno"));
					
				} else {
					olimpiada.setId(-1);
					olimpiada.setOuro(0);
					olimpiada.setPrata(0);
					olimpiada.setBronze(0);
					olimpiada.setNomePais(null);
					olimpiada.setNomeModalidade(null);
					olimpiada.setIdAno(0);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return olimpiada;
	}
	
	public ArrayList<Olimpiada> listarOlimpiada(){
		Olimpiada olimpiada;
		ArrayList<Olimpiada> lista = new ArrayList<>();
		
		String sqlListar = "select id, nomePais, nomeModalidade, idAno, ouro, prata, bronze from olimpiada";
		try(Connection conn = ConnectionFactory.obtemConexao(); 
			PreparedStatement stm = conn.prepareStatement(sqlListar) ){
			try(ResultSet rs = stm.executeQuery()){
				while(rs.next()) {
					olimpiada = new Olimpiada();
					olimpiada.setId(rs.getInt("id"));
					olimpiada.setIdAno(rs.getInt("idAno"));
					olimpiada.setOuro(rs.getInt("ouro"));
					olimpiada.setPrata(rs.getInt("prata"));
					olimpiada.setBronze(rs.getInt("bronze"));
					olimpiada.setNomePais(rs.getString("nomePais"));
					olimpiada.setNomeModalidade(rs.getString("nomeModalidade"));
					
					lista.add(olimpiada);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public ArrayList<Olimpiada> listarOlimpiada(String chave){
		Olimpiada olimpiada;
		ArrayList<Olimpiada> lista = new ArrayList<>();
		
		String sqlListar = "select id, nomePais, nomeModalidade, idAno, ouro, prata, bronze from olimpiada";
		try(Connection conn = ConnectionFactory.obtemConexao(); 
			PreparedStatement stm = conn.prepareStatement(sqlListar) ){
			try(ResultSet rs = stm.executeQuery()){
				while(rs.next()) {
					olimpiada = new Olimpiada();
					olimpiada.setId(rs.getInt("id"));
					olimpiada.setIdAno(rs.getInt("idAno"));
					olimpiada.setOuro(rs.getInt("ouro"));
					olimpiada.setPrata(rs.getInt("prata"));
					olimpiada.setBronze(rs.getInt("bronze"));
					olimpiada.setNomePais(rs.getString("nomePais"));
					olimpiada.setNomeModalidade(rs.getString("nomeModalidade"));
					
					lista.add(olimpiada);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		return lista;
	}
	
}
