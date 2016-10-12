<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastro | Melhor Amigo</title>

        <!-- Bootstrap -->
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

        <link rel="stylesheet" type="text/css" href="../css/layout_default.css" />
        <link rel="stylesheet" type="text/css" href="../css/cadastro_usuario.css">
    </head>
    <body>
        <div class="container mycontainer">
            <header>
                <p><a href="../index.jsp"><img id="logoPrincipal" alt="Logo-ONG" src="../img/logo_melhor_amigo_BLUE.png"></a></p>
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a href="../index.jsp">In�cio</a></li>
                            <li><a href="#">C�es</a></li>
                            <li><a href="#">Ado��o</a></li>
                            <li><a href="#">Apadrinhamento</a></li>
                            <li><a href="#">Volunt�rios</a></li>
                            <li><a href="#">Doa��es</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="login_usuario.jsp">Login</a></li>
                            <li><a href="cadastro_usuario.jsp">Cadastre-se</a></li>
                        </ul>
                    </div>
                </div>
            </header>

            <article>
                <div class="cabecalho center">
                    <h2>Cadastre-se</h2>
                </div>
                
                <form action="#" method="post" id="formCadastro" class="form-horizontal">
                    <fieldset>
                        <legend>Dados Pessoais</legend>
                        <div class="campo">
                            <label class="control-label">Nome Completo:</label>
                            <div class="controls">
                                <input class="input-xlarge" type="text" name="nome" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">CPF:</label>
                            <div class="controls">
                                <input class="input-small" type="text" size="11" maxlength="11" name="cpf" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Idade:</label>
                            <div class="controls">
                                <input class="input-mini" type="text" maxlength="3"name="idade" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Telefone:</label>
                            <div class="controls">
                                <input class="input-small" type="text" maxlength="11" name="telefone">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Endere�o</legend>
                        <div class="campo">
                            <label class="control-label">CEP:</label>
                            <div class="controls">
                                <input class="input-small" type="text" maxlength="8" name="cep" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Rua:</label>
                            <div class="controls">
                                <input class="input-xlarge" type="text" name="rua"> 
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">N�mero:</label>
                            <div class="controls">
                                <input class="input-mini" type="text" name="ncasa">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Bairro:</label>
                            <div class="controls">
                                <input class="input-medium" type="text" name="bairro">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Complemento: </label>
                            <div class="controls">
                                <input class="input-xxlarge" type="text" name="complemento">
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Cidade / Estado: </label>
                            <div class="controls">
                                <input class="input-medium" type="text" name="cidade" required>
                                <select class="input-mini" name="estado">
                                    <option value="Acre">AC</option> 
                                    <option value="Alagoas">AL</option> 
                                    <option value="Amazonas">AM</option> 
                                    <option value="Amap�">AP</option> 
                                    <option value="Bahia">BA</option> 
                                    <option value="Cear�">CE</option> 
                                    <option value="Distrito Federal">DF</option> 
                                    <option value="Esp�rito Santo">ES</option> 
                                    <option value="Goi�s">GO</option> 
                                    <option value="Maranh�o">MA</option> 
                                    <option value="Mato Grosso">MT</option> 
                                    <option value="Mato Grosso do Sul">MS</option> 
                                    <option value="Minas Gerais">MG</option> 
                                    <option value="Par�">PA</option> 
                                    <option value="Para�ba">PB</option> 
                                    <option value="Paran�">PR</option> 
                                    <option value="Pernambuco">PE</option> 
                                    <option value="Piau�">PI</option> 
                                    <option value="Rio de Janeiro">RJ</option> 
                                    <option value="Rio Grande do Norte">RN</option> 
                                    <option value="Rio Grande do Sul">RS</option> 
                                    <option value="Rond�nia">RO</option> 
                                    <option value="Roraima">RR</option> 
                                    <option value="Santa Catarina">SC</option> 
                                    <option value="Sergipe">SE</option> 
                                    <option value="S�o Paulo">SP</option> 
                                    <option value="Tocantins">TO</option> 
                                </select>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Dados de Login</legend>
                        <div class="alert alert-info fade in">
                            <button type='button' class='close' data-dismiss='alert'>�</button>
                            <strong>Aten��o!</strong> Insira um email v�lido e a senha dever� ter no m�nimo 8 caracteres
                        </div>
                        <div class="campo">
                            <label class="control-label">Email: </label>
                            <div class="controls">
                                <input name="email" type="email" placeholder="melhoramigo@exemplo.com" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Senha: </label>
                            <div class="controls">
                                <input class="input-medium" type="password" name="senha1" required>
                            </div>
                        </div>
                        <div class="campo">
                            <label class="control-label">Confirme a senha: </label>
                            <div class="controls">
                                <input class="input-medium" type="password" name="senha2" required>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                        <button type="reset" class="btn">Limpar</button>
                    </div>
                </form>
            </article>

            <footer>
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a href="#">Sobre N�s</a></li>
                            <li><a href="#">Localiza��o</a></li>
                            <li><a href="#">Denuncie</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="mailto:faleconosco@melhoramigo.com"><i class="icon-envelope icon-white"></i> faleconosco@melhoramigo.com</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
    </body>
</html> 