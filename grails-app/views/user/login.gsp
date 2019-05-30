<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 28/05/2019
  Time: 2:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <h1>Prolingo</h1>

</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">home</a></li>

    </ul>
</div>

<div id="create-endUser" class="content scaffold-create" role="main">
    <h1>Login</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${userInstance}">
        <ul class="errors" role="alert">
        <g:eachError bean="${userInstance}" var="error">
            <li <g:if test="${error in org.srinpgframework.validation.FieldError}">data-field-id="${error.field}"</g:if><g:message error="${error}"/></li>
        </g:eachError>
        </ul>
    </g:hasErrors>

    <g:form action="autenticate">
        <fieldset class="from">
            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')}">
                <label for="userName">
                    <g:message code="endUser.userName.label" default="User Name" />
                </label>
                <g:textField name="userName" Value="${userInstance?.userName}" />
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')}">
                <label for="password">
                    <g:message code="endUser.password.label" default="Password"/>
                </label>
                <g:field type="password" name="password" value="${userInstance?.password}"/>
            </div>

        </fieldset>

        <fieldset class"button">
        <g:submitButton name="login" class="save" value="login" />
        </fieldset>
    </g:form>
</div>
</body>
</html>