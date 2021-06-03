<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.userid}">
	<script>alert('로그인하세요!');
		location.href='/mvc/login'
	</script>
</c:if>
<style>
    #boardfrm { width: 600px; margin: 0 auto; padding-top: 50px }
    #boardfrm div { margin-bottom: 10px }
    #boardfrm label { display: inline-block; text-align: right; 
    				width: 125px; font-weight: bold; font-size: 14px }
    #contents { display: inline-block; width: 450px; height:150px }
    /* div:nth-child(3) > label { vertical-align: top; }
    이거는 크롤링? 하기 어렵고 밑에껀 쉽다는 듯? */
    .dragup { vertical-align: top; }				
    input, button { padding: 3px }
    input { width: 400px }
    button { margin-left: 10px; width: 100px }
</style>



<h2>게시판 - 글쓰기</h2>
<form name = "boardfrm" id = "boardfrm">
      <div><label>제 목</label>
          <input type = "text" name = "title" id="title"/>
      </div>
      <div><label>작성자</label>
          <input type = "text" name = "userid" 
          readonly value="${sessionScope.userid}"/>
       </div>
	<br>
       <div><label class="dragup">본 문</label>
           <textarea name="contents" id="contents"></textarea>
       </div>

       <div><label></label>
            <button type = "button" id="writebtn">입력완료</button>
            <button type = "reset">다시입력</button></div>

</form>
    
    
    <script>
		var writebtn = document.getElementById('writebtn');
			writebtn.addEventListener('click', checkwritefrm);
		
		function checkwritefrm() {
			var frm = document.getElementById('boardfrm');
			
			if (frm.title.value == '') {
				alert('제목을 안 쓴거같은데...');
				frm.title.focus();
			} else if (frm.contents.value == '') {
				alert('내용 없음?');
			} else {
				frm.method = 'post';
				frm.action = 'writeok.jsp';
				frm.submit();
			}
		}
	
  </script>
  
  