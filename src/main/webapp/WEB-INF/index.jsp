<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CheLaburo - ${pageTitle}</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="/css/styles.css" rel="stylesheet">
<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
</head>
<body class="bg-stone-50 dark:bg-neutral-800">
	<jsp:include page="layout/header.jsp" />
	<div class="content">
		<jsp:include page="${content}" />
	</div>
	<jsp:include page="layout/footer.jsp" />
</body>
</html>
