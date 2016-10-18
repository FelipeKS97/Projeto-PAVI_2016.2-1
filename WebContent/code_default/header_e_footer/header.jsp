<p><a href="<%= linkInicio %>"><img id="logoPrincipal" alt="Logo-ONG" src="<%= linkLogo %>"></a></p>
<div class="navbar navbar-inverse navbar-static-top">
    <div class="navbar-inner">
        <ul class="nav">
            <li><a href="<%= linkInicio %>">In�cio</a></li>
            <li><a href="<%= linkCaes %>">C�es</a></li>
            <li><a href="<%= linkAdocao %>">Ado��o</a></li>
            <li><a href="<%= linkApadrinhamento %>">Apadrinhamento</a></li>
            <li><a href="<%= linkVoluntarios %>">Volunt�rios</a></li>
            <li><a href="<%= linkDoacoes %>">Doa��es</a></li>
        </ul>
        <ul class="nav pull-right">
            <% 
            if (null != session.getValue("email_usuario")) {
                if (session.getValue("nivel_usuario").equals(0)) {
                    //Header Adotante
            %>
                	<%@ include file="header_usuarios/comum_adotante.jsp" %>
            <%
                }
                else if(session.getValue("nivel_usuario").equals(1)){
                    //Header Padrinho
            %>
                	<%@ include file="header_usuarios/padrinho.jsp" %>
            <%
                }
                else if(session.getValue("nivel_usuario").equals(2)){
                    //Header Volunt�rio
            %>
                	<%@ include file="header_usuarios/voluntario.jsp" %>
            <%
                }
                else if(session.getValue("nivel_usuario").equals(3) || session.getValue("nivel_usuario").equals(4)){
                    //Header Administrador
            %>
                	<%@ include file="header_usuarios/admin.jsp" %>
            <%
                }
            } else {
            %>
            	<%@ include file="header_usuarios/anonimo.jsp" %>
            <%
            }
            %>
        </ul>
    </div>
</div>