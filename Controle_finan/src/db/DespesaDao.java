package br.edu.libertas.db;

import br.edu.libertas.dto.Despesa;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class DespesaDao {

	public void inserir(Despesa desp) {
		
		Conexao con = new Conexao();
		
		try {
			
			String sql = "INSERT INTO despesa "
					     + "(data_cad, descricao, tipo, valor)"
					     + " VALUES (?, ?, ?, ?)";
		
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setDate(1, desp.getData());
			prep.setString(2, desp.getDescricao());
			prep.setString(3, desp.getTipo());
			prep.setDouble(4, desp.getValor());
			prep.execute();
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
	}
	
	public LinkedList<Despesa> listar() {
		
		Conexao con = new Conexao();
		LinkedList<Despesa> lista = new LinkedList<Despesa>();
		
		try {
			
			String sql = "SELECT * FROM despesa";
			Statement instrucao = con.getConexao().createStatement();
			ResultSet res = instrucao.executeQuery(sql);
			
			while (res.next()) {
				Despesa desp = new Despesa();
				desp.setData(res.getDate("data_cad"));
				desp.setDescricao(res.getString("descricao"));
				desp.setTipo(res.getString("tipo"));
				desp.setValor(res.getDouble("valor"));
				desp.setIdDespesa(res.getInt("idDespesa"));
				lista.add(desp);
			}
			res.close();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
		return lista;
	}
	
	public Despesa consultar(int idDespesa) {
		
		Despesa desp = new Despesa();
		Conexao con = new Conexao();
		
		try {
			
			String sql = "SELECT * FROM despesa WHERE idDespesa = " + idDespesa;
			Statement sta = con.getConexao().createStatement();
			ResultSet res = sta.executeQuery(sql);
			
			if (res.next()) {
				desp.setData(res.getDate("data_cad"));
				desp.setDescricao(res.getString("descricao"));
				desp.setTipo(res.getString("tipo"));
				desp.setValor(res.getDouble("valor"));
				desp.setIdDespesa(res.getInt("idDespesa"));
			}
			
			res.close();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		return desp;
	}
	
	public void excluir(int idDespesa) {
		
		Conexao con = new Conexao();
		
		try {
			
			String sql = "DELETE FROM despesa WHERE idDespesa = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setInt(1, idDespesa);
			prep.execute();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
	public void alterar(Despesa desp) {
		
		Conexao con = new Conexao();
		
		try {
			String sql = "UPDATE despesa SET data_cad = ?," +
						" descricao = ?," +
						" tipo = ?," +
						" valor = ?" +
						" WHERE idDespesa = ?";
			
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setDate(1, desp.getData());
			prep.setString(2, desp.getDescricao());
			prep.setString(3, desp.getTipo());
			prep.setDouble(4, desp.getValor());
			prep.setInt(5, desp.getIdDespesa());
			prep.execute();
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
}
