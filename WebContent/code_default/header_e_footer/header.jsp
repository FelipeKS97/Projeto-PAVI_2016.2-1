<p><a href="<%= linkInicio %>"><img id="logoPrincipal" alt="Logo-ONG" src="<%= linkLogo %>"></a></p>
<div class="navbar navbar-inverse navbar-static-top">
    <div class="navbar-inner">
        <ul class="nav">
            <li><a href="<%= linkInicio %>">Início</a></li>
            <li><a href="<%= linkCaes %>">Cães</a></li>
            <li><a href="<%= linkAdocao %>">Adoção</a></li>
            <li><a href="<%= linkApadrinhamento %>">Apadrinhamento</a></li>
            <li><a href="<%= linkVoluntarios %>">Voluntários</a></li>
            <li><a href="<%= linkDoacoes %>">Doações</a></li>
        </ul>
        <!--
        <ul class="nav pull-right">
            <% /*
            if (session.getValue("status_login") != true) {
                if (session.getValue("nivel_usuario") == 0) {
                    //Header Adotante
                    //include ('header_usuarios/comum_adotante.php');
                }
                else if(session.getValue("nivel_usuario") == 1){
                    //Header Padrinho
                	//include ('header_usuarios/padrinho.php');
                }
                else if(session.getValue("nivel_usuario") == 2){
                    //Header Voluntário
                    //include ('header_usuarios/voluntario.php');
                }
                else if(session.getValue("nivel_usuario") >= 3){
                    //Header Administrador
                    //include ('header_usuarios/admin.php');
                }
            } else {
                //include ('header_usuarios/anonimo.php');
            } */
            %>
        </ul>
        -->
    </div>
</div>