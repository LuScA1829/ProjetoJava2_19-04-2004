<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Deletar Genero</title>
    </head>
    <body>
        <h1>Excluindo Genero!!!</h1>
        <p>
            Tem certeza que deseja excluir o Genero ${genero.getTitulo()}?
        </p>
        <form action="/genero/delete" method="post">
            <input type="hidden" name="id" value="${genero.getId()}" />
            <a href="/genero/list">Voltar</a>
            <button type="submit">Excluir</button>
        </form>
    </body>
</html>
