<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html> 
<html lang="UTF-8"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
    <title>Document</title> 
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> 
    <style> 
        /* https://www.w3schools.com/bootstrap/bootstrap_buttons.asp 참고해서 스타일 적용하세요 */ 
        fieldset{width: 600px; margin: auto; padding: 40px; border: 1px solid #ccc; border-radius: 8px; box-shadow: inset 0 1px 1px rgba(0,0,0,.075)} 
        legend{width: auto; border-bottom: 0; margin: 0; font-weight: 700; font-size: 18px;} 
        .form-group:nth-child(1) label{display: block;} 
        .form-group:nth-child(1) input[type=text]{width: 80%; display: inline-block} 

        .form-group:nth-child(3) label{display: block;} 
        .form-group:nth-child(3) input{display: inline-block;  width: 48%} 
        .form-group:nth-child(3) input:first-of-type{margin-right: 3%;} 

        .form-group:nth-child(4) label{display: block;} 
        .form-group:nth-child(4) input{float: left; width: 30%; margin-right: 3%;} 
        .form-group:nth-child(4) select{width: 24%; height: 34px; border-radius:4px;} 
   
        .form-group:nth-child(5) > label{display: block;} 
        .form-group:nth-child(5) .radio_wrap{padding: 6px 4px 3px 4px; text-align: center; border-radius:6px; border: 1px solid #ccc;} 
        .form-group:nth-child(5) .radio_wrap input{margin-right: 4%;} 

        .form-group:nth-child(6) > label:first-of-type{display: block;} 
        .form-group:nth-child(6) .checkbox_wrap {padding: 6px 4px 3px 4px; text-align: center; border-radius:6px; border: 1px solid #ccc; } 
        .form-group:nth-child(6) .checkbox_wrap input{margin-right: 3%;} 

        .form-group:nth-child(7) label{display: block;} 
        .form-group:nth-child(7) input{display: inline-block;  width: 35%} 
        .form-group:nth-child(7) input:first-of-type{margin-right: 3%;} 
        .form-group:nth-child(7) input[type=button]{width: 24%;} 

        .form-group:nth-child(9) textarea {width: 100%; resize: none; border: 1px solid #ccc; border-radius: 8px; box-shadow: inset 0 1px 1px rgba(0,0,0,.075)} 
    </style> 
</head>
<body>
<div class="container"> 
<fieldset> 
<legend>회원등록하기</legend>
<c:url value="daolist.do" var="dao"></c:url>
<form action="${dao}" method="post" name="myform" id="myform" class="" onsubmit="return check()">
<div class="form-group"> 
                    <label for="name">이름</label> 
                    <input type="text" class="form-control" size="10" name="d_name" id="name"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">아이디</label> 
                    <input type="text" class="form-control" size="10" name="d_id" id="id"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">비밀번호</label> 
                    <input type="text" class="form-control" size="10" name="d_pass" id="pass"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">생년월일</label> 
                    <input type="text" class="form-control" size="10" name="d_age" id="age"><br>
                </div> 
                <br>
                <div class="form-group"> 
                    <label for="name">이메일</label> 
                    <input type="text" class="form-control" size="5" name="d_email" id="email"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">핸드폰번호</label> 
                    <input type="text" class="form-control" size="10" name="d_phone" id="phone"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">주소</label> 
                    <input type="text" class="form-control" size="20" name="d_addr" id="addr">  
                </div> 
                <br><br><br>
                <input type=submit value="회원가입" class="btn btn-primary"> 
                <input type=reset value="취소" class="btn btn-danger"> 
            </form> 
        </fieldset>
        </div> 
<jsp:include page="bottom.jsp"></jsp:include>