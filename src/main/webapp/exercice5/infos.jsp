<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chien" scope="request" type="org.example.projet.exercice5.Chien"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Infos</title>
</head>
<body>
<div>
    <p>Nom : ${chien.nom}</p>
    <p>Race : ${chien.race}</p>
    <p>Date de naissance : ${chien.dateNaissance}</p>
</div>
</body>
</html>
