<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/base.html"%>
    <title>Ajouter un chien</title>
</head>
<body>
<div class="container rounded-2 p-2 bg-dark text-white" style="width: 40%">
    <h1>-Ajouter un chien-</h1>
<form action="${pageContext.request.contextPath}/chien/chiens?type=create" method="post">
    <div>
        <label class="form-label" for="nom">Nom :</label>
        <input class="form-control" type="text" id="nom" name="nom" >
    </div>
    <div>
        <label class="form-label" for="race">Race :</label>
        <input class="form-control" type="text" id="race" name="race" >
    </div>
    <div>
        <label class="form-label" for="date">Date de naissance :</label>
        <input class="form-control" type="date" id="date" name="date" >
    </div>
    <hr>
    <div class="d-flex flex-row-reverse">
    <button class="btn btn-outline-success"><i class="bi bi-plus-circle"></i> Ajouter</button>
    </div>
</form>
</div>
</body>
</html>
