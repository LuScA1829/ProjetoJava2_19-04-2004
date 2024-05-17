<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar Livro</title>
    </head>
    <body>
        <h1>Editar Livro!!!</h1>
        <form action="/livros/update" method="post">
            <input type="hidden" name="id" value="${livro.getId()}" />
            <div>
                <label>Titulo</label>
                <input type="text" id="titulo" name="titulo" value="${livro.getTitulo()}"/>
            </div>
            <div>
                <label>Genero</label>
                <select name="genero">
                    <c:forEach var="g" items="${generos}">
                        <option ${livro.genero.id == g.id ? "selected": ""} value="${g.id}">${g.nome}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>
