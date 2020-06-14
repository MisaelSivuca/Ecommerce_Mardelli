package br.com.mardelli.Entity;
import br.com.mardelli.Util.*;

public class Produto {
	private Integer id;
	private String nome;
	private String descricao;
	private int qtd_estoque;
	private double valor;
	private int desconto;
	
	
	public Produto() { }
	
	public Produto(String nome, String descricao, int qtd_estoque, double valor, int desconto) {
		this.nome = nome;
		this.descricao = descricao;
		this.qtd_estoque = qtd_estoque;
		this.valor = valor;
		this.desconto = desconto;
	}
	public Produto(Integer id, String nome, String descricao, int qtd_estoque, double valor, int desconto) {
		this.id =  id;
		this.nome = nome;
		this.descricao = descricao;
		this.qtd_estoque = qtd_estoque;
		this.valor = valor;
		this.desconto = desconto;
	}
	public Produto(String id, String nome, String descricao, int qtd_estoque, double valor, int desconto) {
		
		this.nome = nome;
		this.descricao = descricao;
		this.qtd_estoque = qtd_estoque;
		this.valor = valor;
		this.desconto = desconto;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQtd_estoque() {
		return qtd_estoque;
	}

	public void setQtd_estoque(int qtd_estoque) {
		this.qtd_estoque = qtd_estoque;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public int getDesconto() {
		return desconto;
	}

	public void setDesconto(int desconto) {
		this.desconto = desconto;
	}


	public void validacaoCampos() throws ValidateEcexption {
		if(nome == null || nome.equals("")) {
			throw new ValidateEcexption("Preeencha o campo nome");
		}
		if(descricao == null || descricao.equals("")) {
				throw new ValidateEcexption("O Campo descrição não pode ser vazio.");
			}
		if(valor == 0) {
				throw new ValidateEcexption("Valor não pode ser R$ 0,00");
			}
		if(qtd_estoque == 0) {
			throw new ValidateEcexption("Quantidade não pode ser 0.");
		}

	}
	
}
