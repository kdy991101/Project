<%@page import="com.iu.home.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		 crossorigin="anonymous">
</head>
<c:import url="../template/headerHTML.jsp"></c:import>
<body>
<section class="container-fluid col-lg-6 mt-5">
	<h1>공지사항 Add Page</h1>
	
	<form action="./add" method="post">
	
		<div class="mb-3">
		  <label for="formGroupExampleInput" class="form-label">제목</label>
		  <input type="text" class="form-control" name="title" placeholder="${dto.title}">
		</div>
		
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">작성자</label>
		  <input type="text" class="form-control" name="writer" placeholder="${dto.writer}">
		</div>
		
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">글내용</label>
		  <input type="text" class="form-control" name="contents" placeholder="${dto.contents}">
		</div>
		
		<br>
		<br>
		<br>
		
		
	
	</form>
			<button type="submit" class="btn btn-success">추가완료</button>
	
		<button onclick="location='/'" class="btn btn-primary">홈으로</button>
	
		    			 </section>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    			 integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" 
    			 crossorigin="anonymous"></script>
<c:import url="../template/footerHTML.jsp"></c:import>

</body>
</html>