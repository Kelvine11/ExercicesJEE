<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chiens" type="java.util.ArrayList<org.example.projet.exercice5.Chien>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chiens</title>
</head>
<body>
<c:choose>
<c:when test="${!chiens.isEmpty()}">
<table class="table">
    <thead>
    <tr>
        <th scope="col">nom</th>
        <th scope="col">prénom</th>
        <th scope="col">Date de naissance</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach  var="chien" items="${chiens}" >

    <tr>
        <td>${chien.nom}</td>
        <td>${chien.race}</td>
        <td>${chien.dateNaissance}</td>
        <td><a href="infos?id=${chien.id}">Infos</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</c:when>
<c:otherwise>
    Aucun chien
</c:otherwise>
</c:choose>
<a href="add">Ajouter un chien</a>
<p>Bonjour</p>
</body>
</html>
