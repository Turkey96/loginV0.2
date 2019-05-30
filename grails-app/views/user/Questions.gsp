<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 28/05/2019
  Time: 5:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each in="${Questions}" var="Questions" status="i">
    <h3>${i+1}. ${Questions.id}, ${Questions.pregunta}, ${Questions.opcion1}, ${Questions.opcion2},${Questions.opcion3},,${Questions.sol},${Questions.dif}</h3>
    <br/>
</g:each>
</body>