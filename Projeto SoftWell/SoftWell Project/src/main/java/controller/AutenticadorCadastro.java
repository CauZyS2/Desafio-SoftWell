package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;


@WebServlet("/AutenticadorCadastro")

public class AutenticadorCadastro extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 		
			throws ServletException, IOException {
		
				
		
				Usuario user = new Usuario();		
				String nome = request.getParameter("nome");
				String sexo = request.getParameter("sexo");
				String email = request.getParameter("email");	
				String celular = request.getParameter("celular");
				String senha1 = request.getParameter("senha1");	
				String senha2 = request.getParameter("senha2");
				
				user.setNome(nome);
				user.setSexo(sexo);
				user.setEmail(email);
				user.setCelular(celular);
				user.setSenha1(senha1);
				user.setSenha2(senha2);
				
				if(autenticarNome(user) && autenticarEmail(user) && autenticarSenha(user) && senhasIguais(user) ){
					request.getSession().setAttribute("user", user);
					response.sendRedirect("SucessoCadastro.jsp");
					
				}else if(!autenticarNome(user)){
					request.setAttribute("erro", "Nome inválido, As letra do campo 'nome' precisam estar em caixa alta ! ");
				RequestDispatcher dispatcher = request.getRequestDispatcher("TelaDeCadastro.jsp");
					dispatcher.forward(request, response);
					
				}else if(!autenticarEmail(user)){
					request.setAttribute("erro", "Email Inválido ! ");
				RequestDispatcher dispatcher = request.getRequestDispatcher("TelaDeCadastro.jsp");
					dispatcher.forward(request, response);
					
				}else if(!autenticarSenha(user)){
					request.setAttribute("erro", "Senha inválida, A senha precisar ter no mínimo 8 caracteres, sendo "
							+ "um caracter em caixa alta ");
				RequestDispatcher dispatcher = request.getRequestDispatcher("TelaDeCadastro.jsp");
					dispatcher.forward(request, response);
					
				}else if(!senhasIguais(user)){
					request.setAttribute("erro", "As senhas são diferentes ! ");
				RequestDispatcher dispatcher = request.getRequestDispatcher("TelaDeCadastro.jsp");
					dispatcher.forward(request, response);
					
				}
			}
	
		private boolean autenticarNome(Usuario user) {
			
			boolean autenticado = true;
			
			for (int i = 0; i < user.getNome().length(); i++) {
			      Character letra = user.getNome().charAt(i);
			      if (Character.isWhitespace(letra)) {
			        continue;
			      }
			      if (!Character.isUpperCase(letra)) {
			        autenticado = false;
			        break;
			      }
			    }
			
			return autenticado;
		}
	
		private boolean autenticarEmail(Usuario user) {
				
				boolean autenticado = true;
				
				
				return autenticado;
			}
		
		private boolean autenticarSenha(Usuario user) {
			
			boolean autenticado = false;
			boolean charCaixaAlta = false;
			
			if(user.getSenha1().length() <= 8){
				for(int i = 0; i < user.getSenha1().length();i++) {
					char letra = user.getSenha1().charAt(i);
					
					
					if (!Character.isUpperCase(letra)) {
					       charCaixaAlta = true;
					      }
					
				}
				
			}
			if( charCaixaAlta) {
				autenticado = true;
			}
			return autenticado;
		}
		
		private boolean senhasIguais(Usuario user) {
			
			boolean autenticado = false;
			
			if(user.getSenha1().equals(user.getSenha2())){
				autenticado = true;
			}
			return autenticado;
		}
}


