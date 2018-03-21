package dao;
import java.sql.*;
import model.Modalidade;
import model.Olimpiada;
import model.Pais;

public class OlimpiadaDAO {
	
	Pais pais = new Pais();
	Modalidade modalidade = new Modalidade();
	public void criar(Olimpiada olimpiada) {
		String sqlInsert = "INSERT INTO olimpiada(ouro, prata, bronze, idPais, idModalidade, idAno) VALUES (?, ?, ?, ?, ?, ?)";
		try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setInt(1, olimpiada.getOuro());
			stm.setInt(2, olimpiada.getPrata());
			stm.setInt(3, olimpiada.getBronze());
			stm.setInt(4, pais.getId());
			stm.setInt(5, modalidade.getId());
			stm.setInt(6, olimpiada.getAno());
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_Ano()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					pais.setId(rs.getInt(pais.getId()));
					modalidade.setId(rs.getInt(modalidade.getId()));
					olimpiada.setAno(rs.getInt(olimpiada.getAno()));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void atualiza(Olimpiada olimpiada) {
		String sqlUpdate = "UPDATE olimpiada SET ouro=?, prata=?, bronze=?  WHERE idPais=? AND idModalidade=? AND idAno =?";
		try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setInt(1, olimpiada.getOuro());
			stm.setInt(2, olimpiada.getPrata());
			stm.setInt(3, olimpiada.getBronze());
			stm.setInt(4, pais.getId());
			stm.setInt(5, modalidade.getId());
			stm.setInt(6, olimpiada.getAno());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(Olimpiada olimpiada) {
		String sqlDelete = "DELETE FROM olimpiada WHERE idPais=? AND idModalidade=? AND idAno = ?";
		try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, pais.getId());
			stm.setInt(2, modalidade.getId());
			stm.setInt(3, olimpiada.getAno());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void carregar(Olimpiada olimpiada) {
		String sqlSelect = "SELECT ouro, prata, bronze FROM olimpiada WHERE idPais=? AND idModalidade=? AND idAno = ?";
		try (Connection conn = ConnectionFactory.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, pais.getId());
			stm.setInt(2, modalidade.getId());
			stm.setInt(3, olimpiada.getAno());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					olimpiada.setOuro(rs.getInt("ouro"));
					olimpiada.setPrata(rs.getInt("prata"));
					olimpiada.setBronze(rs.getInt("bronze"));
				} else {
					olimpiada.setAno(-1);
					olimpiada.setOuro(0);
					olimpiada.setPrata(0);
					olimpiada.setBronze(0);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}

	}

}
