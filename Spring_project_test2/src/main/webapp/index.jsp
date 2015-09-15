<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<c:url value="/user" var="user" />
		<li><a href="${user}">사용자 정보</a>
		</li>
		
		<c:url value="/user_select" var="user_select" />
		<li><a href="${user_select}">사용자 정보(select option 적용)</a>
		</li>
		
		<c:url value="/userformat" var="userformat" />
		<li><a href="${userformat}">사용자 정보(format 적용)</a>
		</li>
		
		<c:url value="/user_error" var="user_error" />
		<li><a href="${user_error}">사용자 정보(error 처리 적용)</a>
		</li>
		
		<c:url value="/product" var="product" />
		<li><a href="${product}">제품정보</a>
		</li>
	</body>
</html>
