<%@ page import="org.example.projet.Personne" %><%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/07/2024
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="personnes" type="java.util.ArrayList<org.example.projet.Personne>" scope="request" />
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
    <% for (Personne p: personnes) {%>
    <tr>
        <td><%=p.getNom()%></td>
        <td><%=p.getPrenom()%></td>
        <td><%=p.getAge()%></td>
    </tr>
    <% }%>
    </tbody>
</table>

</body>
</html>
