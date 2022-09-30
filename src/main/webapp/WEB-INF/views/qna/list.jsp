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
<link href="../../resources/qnaList.css" rel="stylesheet" type="text/css">
<c:import url="../template/headerHTML.jsp"></c:import>
</head>
<body>


				<section class="container-fluid col-lg-6 mt-5">
	<h1>Q&A List Page</h1>
	
<form action="./list" class="row row-cols-lg-auto g-3 align-items-center">
	
	  <div class="col-12">
	    <label class="visually-hidden" for="kind">Kind</label>
	    <select name="kind" class="form-select" id="kind">
	      <option selected>선택하세요</option>
	      <option class="kinds" value="contents">내용</option>
	      <option class="kinds" value="title">제목</option>
	      <option class="kinds" value="writer">글쓴이</option>
	    </select>
	  </div>
	  
	  <div class="col-12">
	    <label class="visually-hidden" for="search">검색어</label>
	    <div class="input-group">
	      <input type="text" name="search" value="${param.search}" class="form-control" id="search">
	  	</div>
	  </div>
	 
 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">검색</button>
  </div>
  
</form>
	
 	 <table border="1" class="table table-striped table-hover">
		<thead class="table-dark">
			<tr>
				<th>번호</th>
				<th>   </th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${requestScope.list}" var="dto">
				<tr>
					<td>${pageScope.dto.num}</td>
					
					<td>
						<c:catch>	
	           				 <c:forEach begin="1" end="${dto.depth}" >&ensp;➥</c:forEach>
	           			 </c:catch>
					<td><a href="./detail?num=${pageScope.dto.num}">${pageScope.dto.title}</a></td>
					<td>${pageScope.dto.writer}</td>
					<td>${pageScope.dto.contents}</td>
					<td>${pageScope.dto.regDate}</td>
					<td>${pageScope.dto.hit }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table> 
	
	<%-- 	<table border="1" class="table table-striped table-hover">
				<thead class="table-dark">
					<tr>
						<th>NUM</th>
						<th>TITLE</th>
						<th>WRITER</th>
						<th>CONTENTS</th>
						<th>REGDATE</th>
						<th>HIT</th>
					</tr>
				</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="dto">
				
					<tr>
						<td>${pageScope.dto.num} </td>
						<td>
						
							<c:catch>
								<c:forEach begin="1" end="${dto.depth}">&ensp;➥</c:forEach>
							</c:catch>
							
						<a href ="./detail?num=${pageScope.dto.num}">${pageScope.dto.title}</a></td>
						<td>${pageScope.dto.writer}</td>
						<td>${pageScope.dto.contents}</td>
						<td>${pageScope.dto.regDate}</td>
						<td>${pageScope.dto.hit}</td>
					</tr>
			</c:forEach>
			</tbody>
			</table> --%>
	
	<button onclick="location='/'" class="btn btn-primary">홈으로</button>
	
	<div style="display: inline-block; margin: 0 5px;  float: right;">
		<button onclick="location='add'" class="btn btn-primary">글쓰기</button>
	</div>
	
<div style="display: flex; margin: 5 5px;  justify-content: center;">
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	  	<c:if test="${reviewsPager.pre}">
		    <li class="page-item">
		      <a class="page-link" href="./list?page=${reviewsPager.startNum-1}&kind=${reviewsPager.kind}&search=${reviewsPager.search}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
	    </c:if>
	    
	    <c:forEach begin="${reviewsPager.startNum}" end="${reviewsPager.lastNum}" var="i">
	    	    <li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${reviewsPager.kind}&search=${reviewsPager.search}">${i}</a></li>
	    </c:forEach>
		<li class="page-item ${reviewsPager.next?'':'disabled'}">
	      <a class="page-link" href="./list?page=${reviewsPager.lastNum+1}&kind=${reviewsPager.kind}&search=${reviewsPager.search}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>
</div>
	
	

    			 </section>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    			 integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" 
    			 crossorigin="anonymous"></script>
    			 <c:import url="../template/footerHTML.jsp"></c:import>
  			 
</body>
</html>