<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar Genero</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Editar Genero!!!</h1>
            <form action="/generos/update" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <div>
                    <label class="form-label">Nome</label>
                    <input type="text" class="form-control" name="nome" value="${genero.getNome()}"/>
                </div>
                <hr />
                <a href="/generos/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-warning">Salvar</button>
            </form>
        </div>
    </body>
</html>
