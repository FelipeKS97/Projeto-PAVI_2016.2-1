<%@ page
	import="java.util.*,
			java.sql.*,
			pavi.melhoramigo.dao.conexao.ConexaoMySQL"%>
					
<%
Class.forName("org.gjt.mm.mysql.Driver");
ConexaoMySQL mysql = new ConexaoMySQL();
Connection conexao = mysql.getConexao("jdbc:mysql", "localhost:3306", "melhor_amigo", "root", "");

/*
if (conexao != null) {
	out.println("Conexão bem sucedida!");
} else {
	out.println("Conexão falhou!");
}
*/
%>