<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../top.jsp"></jsp:include>
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
		<th>제목</th>
		<th>파일</th>
		<th>작성일</th>
	</tr>
	</thead>
			<c:forEach var="i" items="${filelist}">
		<c:url value="/" var="home"/>
	<tbody>
		<tr align="center">
		<td>${i.I_NUM}</td>
		<td>${i.I_TITLE}</td>
		<td><a href="${home}/download?fn=${i.I_FILE}">${i.I_FILE} 다운로드</a></td>
		<td>${i.I_DATE}</td>
		</tr>
	</tbody>
	</c:forEach>
	</table>
	<br><br>
	<a href ="upfile">
	<input type=submit value="등록하러가기" class="btn btn-primary">
	</a>
	</div>
</body>
<jsp:include page="../bottom.jsp"></jsp:include>