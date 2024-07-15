<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chien" scope="request" type="org.example.projet.exercice5.entity.Chien"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/base.html"%>
    <title>Infos</title>
</head>
<body>
<div class="container rounded-2 p-2 bg-dark text-white" style="width: 40%">
    <h1>-Détails du chien-</h1>
    <div>
        <label class="form-label" for="nom">Nom :</label>
        <input class="form-control" type="text" id="nom" name="nom" value="${chien.nom}" readonly >
    </div>
    <div>
        <label class="form-label" for="race">Race :</label>
        <input class="form-control" type="text" id="race" name="race" value="${chien.race}" readonly >
    </div>
    <div>
        <label class="form-label" for="date">Date de naissance :</label>
        <input class="form-control" type="date" id="date" name="date" value="${chien.dateNaissance}" readonly>
    </div>
    <hr>
    <div class="d-flex flex-row-reverse">
        <a href="chiens"><button class="btn btn-outline-secondary"><i class="bi bi-arrow-counterclockwise"></i> Retour</button></a>
    </div>
</div>
</body>
</html>
