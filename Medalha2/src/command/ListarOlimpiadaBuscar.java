package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Olimpiada;
import service.OlimpiadaService;

public class ListarOlimpiadaBuscar implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String chave = request.getParameter("data[search]");
		OlimpiadaService olimpiada = new OlimpiadaService();
		ArrayList<Olimpiada> lista = null;
		HttpSession session = request.getSession();
		if (chave != null && chave.length() > 0) {
			lista = olimpiada.listarOlimpiada(chave);
		} else {
			lista = olimpiada.listarOlimpiada();
		}
		session.setAttribute("lista", lista);
		session.setAttribute("data[search]", chave);

		RequestDispatcher dispatcher = request.getRequestDispatcher("VisualizarMedalhas.jsp");
		dispatcher.forward(request, response);
	}
}
