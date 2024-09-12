<%@page import="model.Usuario"%>
<%  
    String login = request.getParameter("email");
    String senha = request.getParameter("senha");
    String oper = request.getParameter("oper");
 
    Usuario user = new Usuario();
    user.setEmail(login);
    user.setSenha(senha);
 
   if ( user.login() == true ) {
        response.sendRedirect("sistema.jsp");
    } else {
       String sHTML="<center>ERRO! Usuário não encontrado ou Senha inválida!<br><a href = 'index.html'> Voltar </a></center>";
       out.println(sHTML);
    }
 
%>