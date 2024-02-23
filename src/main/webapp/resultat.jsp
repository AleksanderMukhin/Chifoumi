<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultat</title>
</head>
<body>
<%
String choiceString = (String) request.getAttribute("choice");
String newNomber = (String) request.getAttribute("newNomberString");

int choice = Integer.parseInt(choiceString);
// int newNumber = Integer.parseInt(newNumberString);
%>
<h1>Resultat</h1>
<h4>Choix du joueur</h4>
<%if(choiceString.equals("1")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/chi.png"/>
	<% 	}else if(choiceString.equals("2")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/>
	<% 	}else if(choiceString.equals("3")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/>
	<%} %>
	
<h4>Choix du server</h4>
<%if(newNomber.equals("1")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/chi.png"/>
	<% 	}else if(newNomber.equals("2")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/>
	<% 	}else if(newNomber.equals("3")){%>
	<img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/>
	<%} %>
	
	<%if(choiceString.equals(newNomber)){%>
	<h2>Match nul</h2>
	<%} else if ((choiceString.equals("1") && newNomber.equals("3")) ||
        (choiceString.equals("2") && newNomber.equals("1")) ||
        (choiceString.equals("3") && newNomber.equals("2"))) {%>
        <h2>Tu as gagné</h2>
     <%} else {%>
     <h2>Tu as perdu</h2>
<%}%>
<a href="<%=request.getContextPath()%>/play.jsp">Rejouer</a>
</body>
</html>