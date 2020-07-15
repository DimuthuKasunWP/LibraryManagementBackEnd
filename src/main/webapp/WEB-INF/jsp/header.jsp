<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>LMS</title>

    <spring:url value="/resources/core/css/hello.css" var="coreCss"/>
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<%--<spring:url value="/lmsdashboard" var="urlHome"/>--%>
<spring:url value="/register" var="userlogout"/>

<nav class="navbar navbar-inverse ">
	<div class="container">
            <h4 style="color: white; margin-left: 10%; width: 100%"> Library Management System</h4>

	</div>

</nav>
