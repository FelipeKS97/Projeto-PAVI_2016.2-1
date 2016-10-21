package pavi.melhoramigo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pavi.melhoramigo.vo.UsuarioVO;
import pavi.melhoramigo.dao.EnderecoDAO;

public class UsuarioDAO {
	private EnderecoDAO enderecoDAO = new EnderecoDAO();
	
	public void criar (Connection conexao, UsuarioVO usuario) throws SQLException {
		String sql = "insert into t_usuario (email, senha, nome, cpf, idade, telefone) values (?, ?, ?, ?, ?, ?)";
		try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
			stmt.setString(1, usuario.getEmail());
			stmt.setString(2, usuario.getSenha());
			stmt.setString(3, usuario.getNome());
			stmt.setString(4, usuario.getCpf());
			stmt.setInt(5, usuario.getIdade());
			stmt.setString(6, usuario.getTelefone());
			stmt.executeUpdate();
		} catch (SQLException e) {
			throw new SQLException("Erro: "+e.getMessage());
		}
		
		usuario.setId_usuario(this.buscaUsuario(conexao, usuario.getEmail()).getId_usuario());
		
		this.enderecoDAO.criar(conexao, usuario.getId_usuario(), usuario.getEndereco());
	}
	
	public UsuarioVO buscaUsuario (Connection conexao, String email) {		
		try (PreparedStatement stmt = conexao.prepareStatement("select * from t_usuario where email ='" + email + "'");
				ResultSet rs = stmt.executeQuery();) {
			if (rs.first()) {
				UsuarioVO usuario = new UsuarioVO();
					
				usuario.setId_usuario(rs.getInt(1));
				usuario.setEmail(rs.getString(2));
				usuario.setSenha(rs.getString(3));
				usuario.setNome(rs.getString(4));
				usuario.setCpf(rs.getString(5));
				usuario.setIdade(rs.getInt(6));
				usuario.setTelefone(rs.getString(7));
				usuario.setNivelUsuario(rs.getInt(8));
				usuario.setStatus_ban(rs.getInt(9));
				usuario.setEndereco(enderecoDAO.buscaEndereco(conexao, usuario.getId_usuario()));
					
				return usuario;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
