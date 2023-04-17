<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.Calendar"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container-sm">
<%
	String etunimi = request.getParameter("etunimi");
	String sukunimi = request.getParameter("sukunimi");
	String sposti = request.getParameter("sposti");
	String puhelinnro = request.getParameter("puhelinnro");
	String syntymavuosi = request.getParameter("syntymavuosi");
	int vuosi = Calendar.getInstance().get(Calendar.YEAR);
	int ika = vuosi - Integer.parseInt(syntymavuosi);
	// Laske k�ytt�j�n ik� dynaamisesti, eli suhteessa kuluvaan vuoteen.
if (ika >= 18) {
	out.print("Etunimi on " + etunimi + "<br>");
	out.print("Sukunimi on " + sukunimi + "<br>");
	out.print("S�hk�postiosoite on " + sposti + "<br>");
	out.print("Puhelinnumero on " + puhelinnro + "<br>");
	out.print("Syntym�vuosi on " + syntymavuosi + "<br>"); 
	out.print("Ik� on " + ika + "<br>");
} else {
	out.print("Alaik�inen");
	response.setHeader("Refresh", "5; URL=kysy.jsp");
}

%>

<br>

</body>
</html>