package br.com.mardelli.Dao;
import br.com.mardelli.Util.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.mardelli.Connection.ConnectFactory;
import br.com.mardelli.Entity.Produto;

public class ProdutoDao {
	public List<Produto> getProdutos() throws SQLException, ClassNotFoundException{
		Connection conexao = ConnectFactory.getConction();
		PreparedStatement ps = conexao.prepareStatement("SELECT id, nome, descricao, qtd_estoque, valor, desconto FROM produtos");
		ResultSet rs = ps.executeQuery();
		List<Produto> produtos = new ArrayList<Produto>();
		while(rs.next()) {
			produtos.add(new Produto(rs.getInt(1),
					rs.getString(2), 
					rs.getString(3), 
					rs.getInt(4), 
					rs.getDouble(5), 
					rs.getInt(6)));
		}
		return produtos;
	}

	public void salvar(Produto produto) throws ClassNotFoundException, SQLException {
		Connection conexao = ConnectFactory.getConction();
		PreparedStatement ps = conexao.prepareStatement("INSERT INTO produtos(nome, descricao, qtd_estoque, valor, desconto) VALUES (?,?,?,?,?)");
		ps.setString(1, produto.getNome());
		ps.setString(2, produto.getDescricao());
		ps.setInt(3, produto.getQtd_estoque());
		ps.setDouble(4, produto.getValor());
		ps.setInt(5, produto.getDesconto());
		ps.execute();
	}

	public void excluir(Integer idProduto) throws ClassNotFoundException, SQLException {
		Connection conexao = ConnectFactory.getConction();
		PreparedStatement ps = conexao.prepareStatement("DELETE FROM produtos WHERE id = ?");
		ps.setInt(1,idProduto);
		ps.execute();	
	}

	public Produto buscaPorId(Integer idProduto) throws ClassNotFoundException, SQLException, ValidateEcexption  {
		Connection conexao = ConnectFactory.getConction();
		PreparedStatement ps = conexao.prepareStatement("SELECT id, nome, descricao, qtd_estoque, valor, desconto FROM produtos WHERE id = ?");
		ps.setInt(1, idProduto);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			return new Produto (rs.getInt(1),
					rs.getString(2), 
					rs.getString(3),
					rs.getInt(4), 
					rs.getDouble(5), 
					rs.getInt(6));
		}
		throw new ValidateEcexption("Não há produto para o id " + idProduto);
	}

	public void atualizar(Produto produto) throws ClassNotFoundException, SQLException{
		Connection conexao = ConnectFactory.getConction();
		PreparedStatement ps = conexao.prepareStatement("UPDATE produtos SET nome = ?, descricao = ?, qtd_estoque = ?, valor = ?, desconto = ?");
		ps.setString(1, produto.getNome());
		ps.setString(2, produto.getDescricao());
		ps.setInt(3, produto.getQtd_estoque());
		ps.setDouble(4, produto.getValor());
		ps.setInt(5, produto.getDesconto());
		ps.execute();
		
	}
}
