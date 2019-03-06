<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<jsp:include page="../top.jsp"></jsp:include>
<h2>Dog</h2>
<div class="row" style="margin-top: 30px;">
			<c:forEach var="i" items="${imglist}">
			<c:url value="/" var="home"/>
			<div class="col-sm-3" style="margin-bottom:20px;">
			<a href="${home}/down?fn=${i.I_IMGS}">
			<img class="img-circle" style="width:100%;"
						src="${pageContext.request.contextPath}/images/${i.I_IMGS}">
			</a>
			<div class="font-italic" align="center" style="margin-top: 10px;">

				${i.I_TITLE}</div>

			</div>
		</c:forEach>

	</div>
	<br>
	<br>
	<br>
<jsp:include page="../bottom.jsp"></jsp:include>