<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Pretendard', sans-serif;
	}

	body{
		background-color: #f8f8f8;
		color: #111;
	}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">

	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">

	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/footer.css">
	</head>
<body>


	
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<jsp:include page="/WEB-INF/views/include/main.jsp" />
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>