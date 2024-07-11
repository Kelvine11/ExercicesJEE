<%@ page import="org.example.projet.Chat" %><%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/07/2024
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chats" type="java.util.ArrayList<org.example.projet.Chat>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personnes</title>
    <%@include file="WEB-INF/base.html"%>
</head>
<body>

<table class="table">
    <thead>
    <tr>
        <th scope="col">nom</th>
        <th scope="col">prénom</th>
        <th scope="col">age</th>
    </tr>
    </thead>
    <tbody>
    <% for (Chat c: chats) {%>
    <tr>
        <td><%=c.getNom()%></td>
        <td><%=c.getRace()%></td>
        <td><%=c.getRepas()%></td>
        <td><%=c.getDateDeNaissance()%></td>
    </tr>
    <% }%>
    </tbody>
</table>
<form action="chats" method="post">
    <div>
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" >
    </div>
    <div>
        <label for="race">Race :</label>
        <input type="text" id="race" name="race" >
    </div>
    <div>
        <label for="repas">Repas :</label>
        <input type="text" id="repas" name="repas" >
    </div>
    <div>
        <label for="date">Date de naissance :</label>
        <input type="date" id="date" name="date" >
    </div>
    <button>Ajouter</button>
</form>
</body>
</html>
