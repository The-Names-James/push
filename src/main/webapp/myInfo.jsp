<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--html 주석  -->
<%-- jsp 주석 --%>
<%--
	<%@~ %>:디렉티브) 대부분 자동으로 입력된다. import 같이 설정에 관련된 정보를 적는다.
	<%!~ %> 선언부) 프로그램에서 사용할 변수나 메소드를 정의한다. = java 파일로 뽑아내서 사용한다.
	<%=~ %> 표현식) 변수에 저장된 데이터나 연산 결과를 출력한다. EL(${~})로 대체해서 사용한다.
	<%~ %> 스크립트릿) 일반적인 jsp코드를 적는다. jstl로 대체해서 사용한다.
--%>

<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP FK</title>
</head>
<body>
	<%-- 탭=&nbsp 줄바꿈=<br> --%>
	myInfo.jsp &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입니다.
	<br>
	<br> 반갑습니다.

	<form action="myInfoOK.jsp" method="post">
		<%-- method는 post 와 get이 있음 --%>

		<label> 이름 <input type="text" name="name">
		</label><br> <label> 아이디 <input type="text" name="id">
		</label><br> <label> 비밀번호 <input type="password" name="password">
		</label><br> <label> 나이 <input type="text" name="age">
		</label>
		<%--
			속성)
			size: 박스 크기 정함
			maxlength: 텍스트 상자 안에 넣을 수 있는 최대 텍스트 수
			placeholder: 연한 텍스트로 미리 써져 있음
			autocomplete: 클릭했을 때의 자동완성 여부
		
		--%>
		<%-- name 속성에 입력한 데이터가 저장돼서 action 페이지로 넘어간다. --%>
		<br>
		<fieldset style="width: 120px;">
			<legend>성별</legend>
			<input type="radio" name="gender" value="남자">남자 
			<input type="radio" name="gender" checked="checked" value="여자">여자 <br>
		</fieldset> <br>
		
		<fieldset style="width: 300px;">
			<legend>취미</legend>
			<input type="checkbox" name="hobbies" value="늦잠자기"> 늦잠자기
			<input type="checkbox" name="hobbies" value="게임하기"> 게임하기
			<input type="checkbox" name="hobbies" value="지각하기"> 지각하기
		</fieldset> <br>
		
		가고싶은 여행지는? <br>
		<select name="trip">
			<option>괌</option>
			<option>미국</option>
			<option>영국</option>
			<option>일본</option>
			<option>중국</option>
			<option selected="selected">호주</option>
		</select> <br>
		
		<select name="travel" multiple="multiple">
			<option>괌</option>
			<option>미국</option>
			<option>영국</option>
			<option>일본</option>
			<option>중국</option>
			<option selected="selected">호주</option>
		</select> <br>
		
		메모<br>
		<textarea rows="10" cols="60" name="content" style="resize: none;"></textarea> <br>
		
		
		
		<input type="submit" value="정보보기">
	</form>
</body>
</html>
