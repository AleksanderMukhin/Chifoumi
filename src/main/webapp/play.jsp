<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>TENTATIVE</h1>
<form action="/Chifoumi/ServletPlay" method="post">
        <button type="submit" name="choice" value="1"><img alt="chi" src="<%=request.getContextPath()%>/images/chi.png"></button>
        <button type="submit" name="choice" value="2"><img alt="fou" src="/Chifoumi/images/fou.png"></button>
        <button type="submit" name="choice" value="3"><img alt="mi" src="/Chifoumi/images/mi.png"></button>
    </form>
</body>
</html>