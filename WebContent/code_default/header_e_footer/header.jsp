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
                    //Header Voluntário
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