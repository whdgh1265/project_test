<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.title_label {
	display: inline-block;
	width: 100px;
}
</style>
</head>
<body>
	<c:url value="/user" var="user"></c:url>
	${userInfo }
	<sform:form method="post" action="${user }" modelAttribute="userInfo">
		<fieldset>
			<legend>사용자 정보</legend>
			<sform:label path="name" class="title_label">이름</sform:label>
			<sform:input path="name" />
			<br>
			<sform:label path="pass" class="title_label">비번</sform:label>
			<sform:input path="pass" />
			<br>
			<sform:label path="email" class="title_label">이메일</sform:label>
			<sform:input path="email" type="email" />
		</fieldset>

		<fieldset>
			<legend>선택 정보</legend>
			<sform:label path="married" class="title_label">결혼여부</sform:label>
			<sform:checkbox path="married" label="기혼" />
			<br>
			<sform:label path="major" class="title_label">전공</sform:label>
			<sform:checkboxes path="major" items="${majoroption }" />
			<br>
			<sform:label path="gender" class="title_label">성별</sform:label>
			<sform:radiobuttons path="gender" items="${genderOption }" />
			<br>
			<sform:label path="role" class="title_label">권한</sform:label>
			<sform:select path="role" multiple="multiple" items="${roleOptions }" itemLabel="roleName" itemValue="roleCode">
			</sform:select>
		</fieldset>
		<sform:button>제출</sform:button>
		
	</sform:form>
</body>
</html>