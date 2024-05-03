<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Generos</title>
    </head>
    <body>
        <h1>Generos!!!</h1>
        <a href="/genero/insert">Novo Genero</a>
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>fklfdfgvsd</th>
            </tr>
            <c:forEach var="l" items="${genero}">
                <tr>
                    <td>${l.getId()}</td>
                    <td>${l.getNome()}</td>
                    <td>
                        <a href="/genero/update/${l.getId()}">Editar</a>
                        <a href="/genero/delete/${l.getId()}">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
