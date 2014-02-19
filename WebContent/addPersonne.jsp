<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="fr.ifsic.tpjava.j2ee.Personne"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="addPersonneT.jsp">
		<table>
			<tr>
				<td><label for="nom"> Nom</label></td>
				<td><input type="text" name="nom" /></td>
			</tr>

			<tr>
				<td><label for="prenom"> Prénom</label></td>
				<td><input type="text" name="prenom" /></td>
			</tr>
			
			<tr>
				<td><label for="mail"> mail</label></td>
				<td><input type="text" name="mail" /></td>
			</tr>
			<tr>
			<td>	<input type="submit" value="submit" /> </td>
			</tr>
		</table>
	</form>
	<%
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String mail = request.getParameter("mail");

		if ((nom==null && prenom==null && prenom==null) || (nom.equalsIgnoreCase("") && prenom.equalsIgnoreCase("")  && mail.equalsIgnoreCase(""))) {
			out.print("<div style=\"font-size:12px;color:red\">**Vous devez remplir tous les champs</div>");
		} else {
			
			
			Personne p = new Personne(nom, prenom, mail);
			Personne.add(p);
			out.print("<h3> La personne a ete inseree dans la base</h3>");
		}
	%>

</body>
</html>