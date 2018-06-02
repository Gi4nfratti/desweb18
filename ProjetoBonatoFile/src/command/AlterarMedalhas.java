package command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Olimpiada;
import service.OlimpiadaService;

public class AlterarMedalhas implements Command {

	@Override
	public void executar(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {
			String oId = request.getParameter("id");
			String oOuro = request.getParameter("ouro");
			String oPrata = request.getParameter("prata");
			String oBronze = request.getParameter("bronze");
			String oNomePais = request.getParameter("nomePais");
			String oNomeModalidade = request.getParameter("nomeModalidade");
			String oIdAno = request.getParameter("idAno");
			HttpSession session = request.getSession();

			int id = -1;
			try {
				id = Integer.parseInt(oId);
			} catch (NumberFormatException e) {
			}

			Olimpiada o = new Olimpiada();
			o.setId(id);
			o.setNomeModalidade(oNomeModalidade);
			o.setNomePais(oNomePais);
			
			if (oOuro != null && oOuro.length() > 0) {

				o.setOuro(Integer.parseInt(oOuro));
			}
			if (oPrata != null && oPrata.length() > 0) {

				o.setPrata(Integer.parseInt(oPrata));
			}
			if (oBronze != null && oBronze.length() > 0) {

				o.setBronze(Integer.parseInt(oBronze));
			}
			if (oIdAno != null && oIdAno.length() > 0) {

				o.setIdAno(Integer.parseInt(oIdAno));
			}
			

			OlimpiadaService os = new OlimpiadaService();

	      	 RequestDispatcher view = null;
	      	 
	      	try {
				os.atualizar(o);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			@SuppressWarnings("unchecked")
			ArrayList<Olimpiada> lista = (ArrayList<Olimpiada>) session.getAttribute("lista");
			int pos = busca(o, lista);
			lista.remove(pos);
			lista.add(pos, o);
			session.setAttribute("lista", lista);
			request.setAttribute("olimpiada", o);
			view = request.getRequestDispatcher("VisualizarCadaPais.jsp");

			view.forward(request, response);
	      	 
	}
	
	public int busca(Olimpiada o, ArrayList<Olimpiada> lista) {
		Olimpiada to;
		for (int i = 0; i < lista.size(); i++) {
			to = lista.get(i);
			if (to.getId() == o.getId()) {
				return i;
			}
		}
		return -1;
	}

}
