<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chiens" type="java.util.ArrayList<org.example.projet.exercice5.entity.Chien>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/base.html"%>
    <title>Chiens</title>
</head>
<body>
<div class="container rounded-2 p-2 bg-dark text-white" style="width: 40%">
    <h1>-Liste des chiens-</h1>
    <c:choose>
<c:when test="${!chiens.isEmpty()}">
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nom</th>
        <th scope="col">Race</th>
        <th scope="col">Date de naissance</th>
        <th scope="col">Détails</th>
        <th scope="col">Modifier</th>
        <th scope="col">Supprimer</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach  var="chien" items="${chiens}" >

    <tr>
        <td scope="row">${chien.id}</td>
        <td>${chien.nom}</td>
        <td>${chien.race}</td>
        <td>${chien.dateNaissance}</td>
        <td><a href="infos?id=${chien.id}"><button class="btn btn-outline-primary"><i class="bi bi-eye"></i> Détails</button></a></td>
        <td><a href="update?id=${chien.id}"><button class="btn btn-outline-primary"><i class="bi bi-pen"></i> Modifier</button></a></td>
        <td><a href="delete?id=${chien.id}"><button class="btn btn-outline-primary"><i class="bi bi-trash3"></i> Supprimer</button></a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</c:when>
<c:otherwise>
    Aucun chien
</c:otherwise>
</c:choose>
    <div class="d-flex flex-row-reverse">
        <a href="add"><button class="btn btn-outline-success"><i class="bi bi-plus-circle"></i> Ajouter un chien</button></a>
    </div>
</div>
</body>
</html>
