<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 15/07/2024
  Time: 09:37
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chien" scope="request" type="org.example.projet.exercice5.entity.Chien"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/base.html"%>
    <title>Title</title>
</head>
<body>
<div class="container rounded-2 p-2 bg-dark text-white" style="width: 40%">
    <h1>-Ajouter un chien-</h1>
    <form action="${pageContext.request.contextPath}/chien/chiens?type=update" method="post">
        <div>
            <label class="form-label" for="nom">Nom :</label>
            <input class="form-control" type="text" id="nom" name="nom" value="${chien.nom}" >
        </div>
        <div>
            <label class="form-label" for="race">Race :</label>
            <input class="form-control" type="text" id="race" name="race" value="${chien.race}" >
        </div>
        <div>
            <label class="form-label" for="date">Date de naissance :</label>
            <input class="form-control" type="date" id="date" name="date" value="${chien.dateNaissance}">
        </div>
        <input id="id" name="id" type="hidden" value="${chien.id}" />
        <hr>
        <div class="d-flex flex-row-reverse">
            <button class="btn btn-outline-success">Modifier</button>
        </div>
    </form>
</div>
</body>
</html>
