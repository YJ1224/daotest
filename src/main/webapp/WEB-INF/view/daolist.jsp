<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<body>
<br><br><br>
	<div class="container">
	<table class="table table-Default table-striped">
	<thead>
	<tr align="center">
		<th>번호</th>
		<th>이름</th>
		<th>아이디</th>
		<th>생년월일</th>
		<th>이메일</th>
		<th>핸드폰번호</th>
		<th>주소</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="i" items="${list}">
		<tr align="center">
		<td>${i.D_NUM}</td>
		<td>${i.D_NAME}</td>
		<td>${i.D_ID}</td>
		<td>${i.D_AGE}</td>
		<td>${i.D_EMAIL}</td>
		<td>${i.D_PHONE}</td>
		<td>${i.D_ADDR}</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
<jsp:include page="bottom.jsp"></jsp:include>