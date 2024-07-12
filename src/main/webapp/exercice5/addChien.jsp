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
    <title>Ajouter un chien</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/chien/chiens" method="post">
    <div>
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" >
    </div>
    <div>
        <label for="race">Race :</label>
        <input type="text" id="race" name="race" >
    </div>
    <div>
        <label for="date">Date de naissance :</label>
        <input type="date" id="date" name="date" >
    </div>
    <button>Ajouter</button>
</form>
</body>
</html>
