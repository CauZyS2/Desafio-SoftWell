<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>

    <title>Tela De Cadastro</title>
    <meta charset="ISO-8859-1">

    <style>
      body{
      background-color: rgb(234, 229, 223);
      font-family: Arial, Helvetica, sans-serif;
      }
      #conteiner{
        border: 3px solid rgb(9, 0, 0);
        text-align: center;
        margin: 5% auto;
        width: 550px;
        background-color: rgb(97, 94, 94);
      }
      label{
        font-size: 1.0em;
        font-weight: bold;
      }
      #cadastro, input {
        border-radius: 5px;
        border: 1px solid rgb(0, 0, 0);
        background-color: rgb(234, 229, 223);
      }

      #cadastro, input:hover {
        background-color: white;
        border: 1px solid rgb(255, 255, 255);
      }

      #cadastro, select {
        background-color: rgb(234, 229, 223);
        border-radius: 5px;
        border: 2px solid rgb(0, 0, 0);
        height: 24px;
        width: 170px;
        font-weight: bold;
        
      }

      #cadastro, select:hover {
        background-color: white;
      }

      #enviar{
        width: 170px;
        height: 50px;
        margin: 20px 0 60px 0;
        font-size: 1.5em;
        font-weight: bold;
      }
      
       #mensagemDeErro{
        margin-top: 0;
        margin-bottom: 30px;
        font-weight: bold;
        font-size: 1.0em;
        padding:10px;
      }

    </style>

  </head>

  <body>
    <div id="conteiner">
      <h1>Tela De Cadastro</h1>
      <form id="cadatro" action="AutenticadorCadastro" method="post">
        <label for="nome">Nome:</label> <br>
        <input type="text"  	name="nome" required><br><br>
        
        <label for="sexo">Sexo:</label> <br>
        <select name="sexo" required>
               <option value="Feminino">Feminino</option>
               <option value="Masculino">Masculino</option>
               <option value="Null">Prefiro Não Especificar</option>
           </select> <br><br>
         
        <label for="email">E-mail:</label> <br>
        <input type="email"  	name="email"  required ><br><br>
        <label for="celular">Celular:</label> <br>
        <input type="tel"  	name="celular" required  ><br><br> 
        <label for="senha1">Senha:</label> <br>
        <input  type="password" name="senha1" required ><br><br>
        <label for="senha2">Confirmar Senha:</label> <br>
        <input  type="password" name="senha2" required><br><br>	
         
        <input id="enviar" type='submit' value="Cadastrar">

   </form>
	   <div id="mensagemDeErro">
	   <%
		String erro = (String) request.getAttribute("erro");
		if(erro!=null && !erro.trim().equals("")){
			out.print(erro);
		}	
		%>
		</div>
    </div>

	</body>
</html>
