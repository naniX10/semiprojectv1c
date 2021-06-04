<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:if test="${empty sessionScope.userid}">
	<script>
		alert('로그인하세요!');
		location.href='/mvc/login';
	</script>
</c:if>

<h2>회원정보</h2>
            
<div id = "myinfo" name ="myinfo">
	
    <div>
        <span class = "label"><strong>아이디</strong></span>
        <span>${sessionScope.userid}</span>
    </div>
    <div>
        <span class = "label"><strong>이름</strong></span>
        <span>${m.name}</span>
    </div>
    <div>
        <span class = "label"><strong>이메일</strong></span>
        <span>${m.email}</span>
    </div>
    <div>
        <span class = "label"><strong>가입일</strong></span>
        <span>${m.joindate}</span>
    </div>
</div>

