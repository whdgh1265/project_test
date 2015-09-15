<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<c:url value="/product" var="product"></c:url>
	<sform:form method="post" action="registerproduct" modelAttribute="product" >
		<fieldset>
			<legend>제품 정보</legend>
			<sform:label path="productCode" class="title_label">제품 코드</sform:label>
			<sform:input path="productCode"/><br>
			
			<sform:label path="productName" class="title_label">제품 명</sform:label>
			<sform:input path="productName"/><br>
			
			<sform:label path="unitPrice" class="title_label">제품 단가</sform:label>
			<sform:input path="unitPrice"/><br>
			
			<sform:label path="managerEmail" class="title_label">담당자 이메일</sform:label>
			<sform:input path="managerEmail"/><br>
			
			<sform:label path="numberStr" class="title_label">숫자형 문자</sform:label>
			<sform:input path="numberStr"/><br>
			
			<sform:label path="options" class="title_label">옵션</sform:label>
			<sform:checkboxes path="options" items="${options }"/><br>
			
			<sform:errors path="*"></sform:errors><br>
			<sform:button>제출</sform:button>
			
		</fieldset>
	</sform:form>
</body>
</html>