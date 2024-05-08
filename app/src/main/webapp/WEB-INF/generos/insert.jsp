<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Genero</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">

            <h1>Novo Genero!!!</h1>
            <form action="/generos/insert" method="post">
                <div>
                    <label class="form-label">Nome</label>
                    <input type="text" id="nome" name="nome" class="form-control"/>
                </div>
                <hr />
                <a href="/generos/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>
