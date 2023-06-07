<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Usuario" %>
<!DOCTYPE html>
<html>
  <head>

    <title>Tela De Sucesso</title>
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

      #botoes{
        height: 100px;
        margin: 0 auto;
        width: 300px;
        padding: 0;

      }

      .enviar{
        padding: 0;
        margin: 20px;
        width: 100px;
        height: 60px;
        float: right;
        font-size: 1em;
        font-weight: bold;
        border-radius: 5px;
        border: 1px solid rgb(0, 0, 0);
        background-color: rgb(234, 229, 223);
      }

      button:hover{
        background-color: white;
      }
      button{
        padding: 0;
      }

      
      

      

      #mensagemDeErro{
        margin-top: 0;
        margin-bottom: 30px;
        font-weight: bold;
        font-size: 1.2em;
        padding:10px;
      }

      #conteiner p{
        font-size: 2.0em;
        color: aliceblue;
      }

    </style>

  </head>

  <body>
    <div id="conteiner">
      <h1>Tela De Sucesso</h1>
      <p><% 	Usuario user = (Usuario) session.getAttribute("user"); %>
		Bem-vindo(a), <%=user.getNome() %>
		Cadastro Realizado Com Sucesso !</p>
    
    </div>
  </body>
</html>
