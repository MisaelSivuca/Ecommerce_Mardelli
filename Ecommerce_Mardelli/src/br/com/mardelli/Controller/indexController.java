package br.com.mardelli.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mardelli.Dao.ProdutoDao;

/**
 * Servlet implementation class indexController
 */
@WebServlet("/indexController")
public class indexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProdutoDao produtoDao = new ProdutoDao();

    public indexController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setAttribute("produto", produtoDao.getProdutos());
			} catch (ClassNotFoundException e) {
				request.setAttribute("msg", "Erro: " + e.getMessage());
			} catch (SQLException e) {
				request.setAttribute("msg", "Erro: " + e.getMessage());
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
