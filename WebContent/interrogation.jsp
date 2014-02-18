<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="fr.ifsic.tpjava.j2ee.Personne"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Chercher une personne</h1>
	<!-- form method="post"  action="personne.jsp">
		<input type="text" name="identifiant"> <input type="submit" value="Submit">
	</form-->
	<form method="post" action="personne.jsp">
		<select name="id" style=" width : 126px;">
				<%
					String name = request.getParameter("nom");
					String prenom = request.getParameter("prenom");
					String mail = request.getParameter("mail");
					Personne p = new Personne(name,prenom, mail); 
					Personne.add(p);
					for (int i = 0; i < Personne.listIds().length; i++) {
				%>
				<option
					value="<%String id = Personne.listIds()[i];
				out.print(id);%>
				">
					<%
						out.print(Personne.get(id).getNom());
						}
					%>
				</option>
		</select> <br/>
		<!-- input type="text" name="identifiant"--> 
		<input type="submit" value="Submit">
	</form>
</body>
</html>