<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	myInfoOK.jsp입니다.
	<br>

	<%
	// 괄호 안은 jsp (java)영역. <!-- -->가 주석이 아니라 //가 주석이 된다.
	// request.getParameter()메소드로 이전 페이지에서 submit 버튼이 클릭되면 넘어오는 데이터를 받는다.
	// => 이전 페이지에서 넘어오는 데이터는 무조건 문자열로 넘어온다.
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.println(name);

	String id = request.getParameter("id");
	out.println(name + "님의 아이디는 " + id + " 입니다.<br>");

	String password = request.getParameter("password");
	out.println(name + "님의 비밀번호는 " + password + " 입니다.<br>");

	try {
		int age = Integer.parseInt(request.getParameter("age"));
		out.println(name + "님의 나이는 " + age + " 입니다.<br>");
		out.println(name + "님의 내년 나이는 " + (age + 1) + " 입니다.<br>");
	} catch (NumberFormatException e) {
		out.println("<script>");
		out.println("alert('잘못된 나이가 입력되었습니다.')");
		out.println("</script>");
	}

	String gender = request.getParameter("gender");
	out.println(name + "님은 " + gender + "입니다.<br>");

	//checkbox는 여러 항목을 선택할 수 있는데 아래와 같이 getParameter() 메소드를 이용해서 넘어오는 데이터를 받으면 맨 처음에 선택한 값만 나온다
	//그러므로 getParameter() 메소드를 사용하면 안됨
	//getParameterValues()를 사용 (데이터가 배열로 넘어옴)
	//String hobbies= request.getParameter("hobbies");
	//out.println(name+"님의 취미는 "+ hobbies +"입니다.");

	String[] hobbies = request.getParameterValues("hobbies");
	out.println(name + "님의 취미는");
	try {
		for (int i = 0; i < hobbies.length; i++) {
			out.println(hobbies[i] + " ");
		}

		out.println("입니다. <br>");
	} catch (NullPointerException e) {
		out.println(" 없습니다. <br>");
	}
	
	String trip=request.getParameter("trip");
	out.println(name+"님은 "+ trip +"로 가고 싶어합니다.<br>");
	
	String[] travel = request.getParameterValues("travel");
	out.println(name + "님은 ");
	try {
		for (int i = 0; i < travel.length; i++) {
			out.println(travel[i] + " ");
		}

		out.println("로 가고 싶어합니다. <br>");
	} catch (NullPointerException e) {
		out.println("가고 싶어하는 곳이 없습니다. <br>");
	}
	
	String content=request.getParameter("content");
	out.println(name+"님이 남긴글 "+ content.replace("<", "&lt;").replace(">", "&gt;") +"<br>");
	out.println(name+"님이 남긴글 "+ content.replace("\r\n", "<br>") +"<br>");
	%>
</body>
</html>
