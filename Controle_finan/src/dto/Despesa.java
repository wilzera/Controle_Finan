package br.edu.libertas.dto;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Despesa {
	
	private Date data;
	private String descricao = "";
	private String tipo = "";
	private double valor;
	private int idDespesa;
	
	public int getIdDespesa() {
		return idDespesa;
	}

	public void setIdDespesa(int idDespesa) {
		this.idDespesa = idDespesa;
	}

	public Date getData() {
		return data;
	}
	
	public void setData(Date data) {
		this.data = data;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getTipo() {
		return tipo;
	}
	
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public double getValor() {
		return valor;
	}
	
	public void setValor(double valor) {
		this.valor = valor;
	}
	
	public String getDataString() {
		String teste = "";
		
		if (data != null) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			teste = dateFormat.format(data);
		}
		return teste;
	}
	
}
