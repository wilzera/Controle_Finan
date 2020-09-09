package br.edu.libertas.db;

import br.edu.libertas.dto.Receita;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class ReceitaDao {

	public void inserir(Receita rec) {
		
		Conexao con = new Conexao();
		
		try {
			
			String sql = "INSERT INTO receita "
					     + "(data_cad, descricao, tipo, valor)"
					     + " VALUES (?, ?, ?, ?)";
		
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setDate(1, rec.getData());
			prep.setString(2, rec.getDescricao());
			prep.setString(3, rec.getTipo());
			prep.setDouble(4, rec.getValor());
			prep.execute();
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
	}
	
	public LinkedList<Receita> listar() {
		
		Conexao con = new Conexao();
		LinkedList<Receita> lista = new LinkedList<Receita>();
		
		try {
			
			String sql = "SELECT * FROM receita";
			Statement instrucao = con.getConexao().createStatement();
			ResultSet res = instrucao.executeQuery(sql);
			
			while (res.next()) {
				Receita rec = new Receita();
				rec.setData(res.getDate("data_cad"));
				rec.setDescricao(res.getString("descricao"));
				rec.setTipo(res.getString("tipo"));
				rec.setValor(res.getDouble("valor"));
				rec.setIdReceita(res.getInt("idReceita"));
				lista.add(rec);
			}
			res.close();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
		return lista;
	}
	
	public Receita consultar(int idReceita) {
		
		Receita rec = new Receita();
		Conexao con = new Conexao();
		
		try {
			
			String sql = "SELECT * FROM receita WHERE idReceita = " + idReceita;
			Statement sta = con.getConexao().createStatement();
			ResultSet res = sta.executeQuery(sql);
			
			if (res.next()) {
				rec.setData(res.getDate("data_cad"));
				rec.setDescricao(res.getString("descricao"));
				rec.setTipo(res.getString("tipo"));
				rec.setValor(res.getDouble("valor"));
				rec.setIdReceita(res.getInt("idReceita"));
			}
			
			res.close();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		return rec;
	}
	
	public void excluir(int idReceita) {
		
		Conexao con = new Conexao();
		
		try {
			
			String sql = "DELETE FROM receita WHERE idReceita = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setInt(1, idReceita);
			prep.execute();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
	public void alterar(Receita rec) {
		
		Conexao con = new Conexao();
		
		try {
			String sql = "UPDATE receita SET data_cad = ?," +
						" descricao = ?," +
						" tipo = ?," +
						" valor = ?" +
						" WHERE idReceita = ?";
			
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setDate(1, rec.getData());
			prep.setString(2, rec.getDescricao());
			prep.setString(3, rec.getTipo());
			prep.setDouble(4, rec.getValor());
			prep.setInt(5, rec.getIdReceita());
			prep.execute();
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
}
