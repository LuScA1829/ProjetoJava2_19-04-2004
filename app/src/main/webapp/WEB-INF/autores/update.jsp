<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar Autor</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Editar Autor!!!</h1>
            <form action="/autores/update" method="post">
                <input type="hidden" name="id" value="${autores.id}" />
                <div>
                    <label class="form-label">Nome</label>
                    <input type="text" class="form-control" name="nome" value="${autor.getNome()}"/>
                </div>
                <hr />
                <a href="/autores/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-warning">Salvar</button>
            </form>
        </div>
    </body>
</html>
