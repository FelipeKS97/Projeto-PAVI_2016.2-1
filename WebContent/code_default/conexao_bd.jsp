<%@ page
	import="java.sql.*"%>

<jsp:useBean id="mysql" class="pavi.melhoramigo.dao.conexao.ConexaoMySQL"/>
				
<%
Connection conexao = mysql.getConexao("jdbc:mysql", "localhost:3306", "melhor_amigo", "root", "");

/*
if (conexao != null) {
	out.println("Conex�o bem sucedida!");
} else {
	out.println("Conex�o falhou!");
}
*/
%>