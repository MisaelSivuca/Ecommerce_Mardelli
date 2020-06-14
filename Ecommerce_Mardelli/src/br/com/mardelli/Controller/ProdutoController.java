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
import br.com.mardelli.Entity.Produto;
import br.com.mardelli.Util.ValidateEcexption;

/**
 * Servlet implementation class ProdutoControl
 */
@WebServlet("/produtoController")
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProdutoDao produtoDao = new ProdutoDao();
  
    public ProdutoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String acao = request.getParameter("acao");	
		String id = request.getParameter("id");	
		
		try {
			if(acao != null && acao.equals("excluir")) {
				Integer idProduto = Integer.parseInt(id);
				produtoDao.excluir(idProduto);
				request.setAttribute("msg", "Excluido com sucesso");
			}else if(acao != null && acao.equals("editar")) {
				Integer idProduto = Integer.parseInt(id);
				Produto produto = produtoDao.buscaPorId(idProduto);
				request.setAttribute("produto", produto);
			}
			request.setAttribute("produto", produtoDao.getProdutos());
			} catch (ClassNotFoundException e) {
				request.setAttribute("msg", "Erro: " + e.getMessage());
			} catch (SQLException e) {
				request.setAttribute("msg", "Erro: " + e.getMessage());
			} catch (ValidateEcexption e) {
				request.setAttribute("msg", "Erro: " + e.getMessage());
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/cadastroProduto.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String descricao = request.getParameter("descricao");
		int qtd_estoque = Integer.parseInt(request.getParameter("qtd_estoque"));
		Double valor = Double.parseDouble(request.getParameter("valor"));
		int desconto = Integer.parseInt(request.getParameter("desconto"));
		
		Produto produto = new Produto(nome, descricao, qtd_estoque, valor, desconto);
		
		if(id != null) {
			produto.setId(Integer.parseInt(id));
		}
		try {
			produto.validacaoCampos();
			if(produto.getId() == null) {
				produtoDao.atualizar(produto);
				request.setAttribute("msg", "O produto Foi Salvo com sucesso");			
			}else {
				produtoDao.salvar(produto);
				request.setAttribute("msg", "O produto Foi Salvo com sucesso");
			}
			//request.setAttribute("produto", produtoDao.getProdutos());
		} catch (ClassNotFoundException e) {
			request.setAttribute("msg", "Erro  " + e.getMessage());
			request.setAttribute("produto", produto);
		} catch (SQLException e) {
			request.setAttribute("msg", "Erro na conexão" + e.getMessage());
			request.setAttribute("produto", produto);
		}
		catch (ValidateEcexption e) {
			request.setAttribute("msg", "Erro na vadidação");
			request.setAttribute("produto", produto);
		}
		try {
			request.setAttribute("produto", produtoDao.getProdutos());
		}catch (ClassNotFoundException e) {
			request.setAttribute("msg", "Erro  " + e.getMessage());
			request.setAttribute("produto", produto);
		} catch (SQLException e) {
			request.setAttribute("msg", "Erro na conexão" + e.getMessage());
			request.setAttribute("produto", produto);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/cadastroProduto.jsp");
		dispatcher.forward(request, response);
	}

}
