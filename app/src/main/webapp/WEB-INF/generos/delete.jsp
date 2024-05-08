<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Deletar Genero</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Excluindo Genero!!!</h1>
            <p>
                Tem certeza que deseja excluir o Genero ${genero.nome}?
            </p>
            <form action="/generos/delete" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                
                <hr />
                <a href="/generos/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
    </body>
</html>
