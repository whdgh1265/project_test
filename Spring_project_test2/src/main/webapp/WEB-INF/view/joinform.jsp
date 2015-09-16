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
			<sform:label path="id" class="title_label">아이디</sform:label>
			<sform:input path="id" />
			<br>
				<sform:label path="nickname" class="title_label">닉네임</sform:label>
			<sform:input path="nickname" />
			<br>
			<sform:label path="pass" class="title_label">비밀번호</sform:label>
			<sform:input path="pass" type="pass"/>
			<br>
			<sform:label path="email" class="title_label">이메일</sform:label>
			<sform:input path="email" type="email" />
			<br>
			<sform:label path="cellphone" class="title_label">핸드폰</sform:label>
			<sform:input path="cellphone" type="cellphone" />
			<br>
			<sform:label path="address" class="title_label">주소</sform:label>
			<sform:input path="address" type="address" />
			<br>
			<sform:label path="mail_no" class="title_label">우편번호</sform:label>
			<sform:input path="mail_no" type="mail_no" />
			<br>
			
		</fieldset>

		
		<sform:button>제출</sform:button>
		
	</sform:form>
</body>
</html>