package pavi.melhoramigo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import pavi.melhoramigo.vo.EnderecoVO;

public class EnderecoDAO {
	public void criar (Connection conexao, int id_usuario, EnderecoVO endereco) throws SQLException {
		String sql = "insert into t_endereco (id_usuario, cep, rua, ncasa, bairro, complemento, cidade, estado) values (?, ?, ?, ?, ?, ?, ?, ?)";
		try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
			stmt.setInt(1, id_usuario);
			stmt.setString(2, endereco.getCep());
			stmt.setString(3, endereco.getRua());
			stmt.setString(4, endereco.getnCasa());
			stmt.setString(5, endereco.getBairro());
			stmt.setString(6, endereco.getComplemento());
			stmt.setString(7, endereco.getCidade());
			stmt.setString(8, endereco.getEstado());
			stmt.executeUpdate();
		} catch (SQLException e) {
			throw new SQLException("Erro: "+e.getMessage());
		}
	}
}
