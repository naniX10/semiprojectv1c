<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <html lang = "ko">

<h2>회원가입</h2>
<span style="color:red"> ${error} </span> 

<form name = "joinfrm" id = "joinfrm" method = "post">

    <div><label for = "userid">아이디</label>
        <input type = "text" name = "userid" id = "userid" required></div>

    <div><label for = "passwd">비밀번호</label>
        <input type = "password" name = "passwd" id = "passwd" required></div>

    <div><label for = "chkpwd">비밀번호 확인</label>
        <input type = "password" name = "chkpwd" id = "chkpwd" required></div>

    <div><label for = "name">이 름</label>
        <input type = "text" name = "name" id = "name" required></div>

    <div><label for = "email">이메일</label>
        <input type = "text" name = "email" id = "email" required></div>

    <div><label></label>
         <button type = "button" id="okbtn">입력완료</button>
         <button type = "reset">다시입력</button></div>
</form>

<script>
        	var okbtn = document.getElementById('okbtn');
        	okbtn.addEventListener('click', checkjoinfrm);
        	
        	function checkjoinfrm() {
        		var frm = document.getElementById('joinfrm');
        		if (frm.userid.value == '')
        			alert('아이디 입력해줘용!');
        		else if (frm.passwd.value == '')
        			alert('비번 입력해줘잉~');
        		else if (frm.chkpwd.value == '')
        			alert('비번확인 입력해!');
        		else if (frm.chkpwd.value != frm.passwd.value)
        			alert('비번이랑 비번확인이랑 안맞는데?');
        		else if (frm.name.value == '')
        			alert('님 이름 없음?');
        		else if (frm.email.value == '')
        			alert('설마 이메일 없는거야....??');
        		else {
        			frm.action = 'join';
        			frm.submit();
        		}
        	}
        	<%-- 이거 위에 하는게 저위(form)에 액션 추가하는 거랑 같은 거임! --%>
        			
        </script>