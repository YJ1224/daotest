<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
      height: 200px;
      background: #aaa;
  }
  </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0; background:#4da6ff;">
  <h1>My First Bootstrap 4 Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>

<nav class="navbar navbar-expand-sm  navbar-dark text-dark" style="background:#b3d9ff;">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="daotest.do">회원등록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="daolist.do">회원목록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/smvc/spr/list">JSON</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="upform">IMG_UPLOAD</a>
      </li>
            <li class="nav-item">
        <a class="nav-link" href="up.do">IMG_LIST</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="upfile">FILE_UPLOAD</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="file.do">FILE_LIST</a>
      </li>
           <li class="nav-item">
        <a class="nav-link" href="login.jsp">LOGIN</a>
      </li>
    </ul>
  </div>  
</nav>
</head>
<body>
</body>
</html>