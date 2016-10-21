<%@ include file="../code_default/controle_login.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Meus Dados | Melhor Amigo</title>
        
        <!-- Bootstrap -->
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

        <link rel="stylesheet" type="text/css" href="../css/layout_default.css" />
        <link rel="stylesheet" type="text/css" href="../css/cadastro_usuario.css" />
        
    </head>
    <body>
        <div class="container mycontainer">
            <header>
               <%
                String linkLogo = "../img/logo_melhor_amigo_BLUE.png";
                
                String linkInicio = "../index.jsp";
                String linkCaes = "#";
                String linkAdocao = "#";
                String linkApadrinhamento = "#";
                String linkDoacoes = "#";
                String linkVoluntarios = "#";
                String linkLogin = "login_usuario.jsp";
                String linkCadastro = "cadastro_usuario.jsp";
                String linkLogout = "../deslogar";
                String linkMeusDados = "meus_dados.jsp";

                String linkControleCaes = "#";
                String linkPedidosAdocao = "#";
                String linkPedidosVoluntario = "#";
                String linkControleUsuarios = "#";

                String linkAreaPadrinho = "#";
                String linkAreaVoluntario = "#";
                
                if (null == session.getAttribute("email_usuario")) {
                	response.sendRedirect("../index.jsp");
                }
                %>                   
                
                <%@ include file="../code_default/header_e_footer/header.jsp" %>
            </header>

            <article>
            	<%
                if (null != request.getParameter("func")) {
                    String func = request.getParameter("func");
                    if (func.equals("edit")) {
                %>
                    <div class='alert alert-success fade in'>
                        <button type='button' class='close' data-dismiss='alert'>×</button>
                        <strong>Pronto!</strong> Os seus dados de cadastro foram atualizados com sucesso!
                    </div>
                <%
                    } else if (func.equals("senha")) {
                %>
                    <div class='alert alert-success fade in'>
                        <button type='button' class='close' data-dismiss='alert'>×</button>
                        <strong>Pronto!</strong> A sua senha foi alterada com sucesso!
                    </div>
                <%
                    }
                }
                %>

                <div class="cabecalho center">
                    <h2>Meus Dados</h2>
                </div>

                <form action="../editarmeusdados" method="post" id="formDados" class="form-horizontal">
                    <input type="hidden" value="${ controle_login.getUsuario_atual().getId_usuario() }" name="id_usuario">
                    <fieldset>
                        <legend>Dados Pessoais</legend>
                        <div class="campo">
                            <label class="control-label">Nome Completo:</label>
                            <div class="controls">
                                <input class="input-xlarge" type="text" name="nome" value="${ controle_login.getUsuario_atual().getNome() }" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">CPF:</label>
                            <div class="controls">
                                <input class="input-medium" type="text" name="cpf" value="${ controle_login.getUsuario_atual().getCpf() }" disabled>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Idade:</label>
                            <div class="controls">
                                <input class="input-mini" type="text" maxlength="3" name="idade" value="${ controle_login.getUsuario_atual().getIdade() }" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Telefone:</label>
                            <div class="controls">
                                <input class="input-small" type="text" maxlength="11" name="telefone" value="${ controle_login.getUsuario_atual().getTelefone() }">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Endereço</legend>
                        <div class="campo">
                            <label class="control-label">CEP:</label>
                            <div class="controls">
                                <input class="input-small" type="text" maxlength="8" name="cep" value="${ controle_login.getUsuario_atual().getEndereco().getCep() }" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Rua:</label>
                            <div class="controls">
                                <input class="input-xlarge" type="text" name="rua" value="${ controle_login.getUsuario_atual().getEndereco().getRua() }"> 
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Número:</label>
                            <div class="controls">
                                <input class="input-mini" type="text" name="ncasa" value="${ controle_login.getUsuario_atual().getEndereco().getnCasa() }">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Bairro:</label>
                            <div class="controls">
                                <input class="input-medium" type="text" name="bairro" value="${ controle_login.getUsuario_atual().getEndereco().getBairro() }">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Complemento: </label>
                            <div class="controls">
                                <input class="input-xxlarge" type="text" name="complemento" value="${ controle_login.getUsuario_atual().getEndereco().getComplemento() }">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Cidade / Estado: </label>
                            <div class="controls">
                                <input class="input-medium" type="text" name="cidade" value="${ controle_login.getUsuario_atual().getEndereco().getCidade() }" required>
                                <% String estado = controle_login.getUsuario_atual().getEndereco().getEstado(); %>
                                <select class="input-mini" name="estado">
                                    <option value="Acre" <%= estado.equals("Acre") ? "selected" : "" %>>AC</option> 
                                    <option value="Alagoas" <%= estado.equals("Alagoas") ? "selected" : ""  %>>AL</option> 
                                    <option value="Amazonas" <%= estado.equals("Amazonas") ? "selected" : "" %>>AM</option> 
                                    <option value="Amapá" <%= estado.equals("Amapá") ? "selected" : "" %>>AP</option> 
                                    <option value="Bahia" <%= estado.equals("Bahia") ? "selected" : "" %>>BA</option> 
                                    <option value="Ceará" <%= estado.equals("Ceará") ? "selected" : "" %>>CE</option> 
                                    <option value="Distrito Federal" <%= estado.equals("Distrito Federal") ? "selected" : "" %>>DF</option> 
                                    <option value="Espírito Santo" <%= estado.equals("Espírito Santo") ? "selected" : "" %>>ES</option> 
                                    <option value="Goiás" <%= estado.equals("Goiás") ? "selected" : "" %>>GO</option> 
                                    <option value="Maranhão" <%= estado.equals("Maranhão") ? "selected" : "" %>>MA</option> 
                                    <option value="Mato Grosso" <%= estado.equals("Mato Grosso") ? "selected" : "" %>>MT</option> 
                                    <option value="Mato Grosso do Sul" <%= estado.equals("Mato Grosso do Sul") ? "selected" : "" %>>MS</option> 
                                    <option value="Minas Gerais" <%= estado.equals("Minas Gerais") ? "selected" : "" %>>MG</option> 
                                    <option value="Pará" <%= estado.equals("Pará") ? "selected" : "" %>>PA</option> 
                                    <option value="Paraíba" <%= estado.equals("Paraíba") ? "selected" : "" %>>PB</option> 
                                    <option value="Paraná" <%= estado.equals("Paraná") ? "selected" : "" %>>PR</option> 
                                    <option value="Pernambuco" <%= estado.equals("Pernambuco") ? "selected" : "" %>>PE</option> 
                                    <option value="Piauí" <%= estado.equals("Piauí") ? "selected" : "" %>>PI</option> 
                                    <option value="Rio de Janeiro" <%= estado.equals("Rio de Janeiro") ? "selected" : "" %>>RJ</option> 
                                    <option value="Rio Grande do Norte" <%= estado.equals("Rio Grande do Norte") ? "selected" : "" %>>RN</option> 
                                    <option value="Rio Grande do Sul" <%= estado.equals("Rio Grande do Sul") ? "selected" : "" %>>RS</option> 
                                    <option value="Rondônia" <%= estado.equals("Rondônia") ? "selected" : "" %>>RO</option> 
                                    <option value="Roraima" <%= estado.equals("Roraima") ? "selected" : "" %>>RR</option> 
                                    <option value="Santa Catarina" <%= estado.equals("Santa Catarina") ? "selected" : "" %>>SC</option> 
                                    <option value="Sergipe" <%= estado.equals("Sergipe") ? "selected" : "" %>>SE</option> 
                                    <option value="São Paulo" <%= estado.equals("São Paulo") ? "selected" : "" %>>SP</option> 
                                    <option value="Tocantins" <%= estado.equals("Tocantins") ? "selected" : "" %>>TO</option>
                                </select>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Dados de Login<a href="#" class="btn pull-right">Alterar Senha</a></legend>
                        <div class="campo">
                            <label class="control-label">Email: </label>
                            <div class="controls">
                                <input name="email" type="email" value="${ controle_login.getUsuario_atual().getEmail() }" disabled>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Senha: </label>
                            <div class="controls">
                                <input class="input-medium" type="password" name="senha1" value="********" disabled>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Salvar Alterações</button>
                    </div>
                </form>
            </article>

            <footer>
                <%
                String linkSobre = "#";
            	String linkLocalizacao = "#";
                String linkDenuncie = "#";
                %>
                
                <%@ include file="../code_default/header_e_footer/footer.jsp" %>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
    </body>
</html>