package command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Olimpiada;
import service.OlimpiadaService;


public class VisualizarMedalhas implements Command {

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
		ArrayList<Olimpiada> lista = null;
		lista = os.listarOlimpiada();
		request.setAttribute("lista", lista);

			
			os.carregar(o.getId());
			request.setAttribute("olimpiada", o);
			RequestDispatcher dispatcher = request.getRequestDispatcher("VisualizarMedalhas.jsp");
			dispatcher.forward(request, response);
		
	}
	

}



