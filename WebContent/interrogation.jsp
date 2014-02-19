<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="fr.ifsic.tpjava.j2ee.Personne"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<form method="POST" action="interrogationT.jsp">

		Chercher une personne: <input type="text" name="id" /> <input
			type="submit" value="submit" />

	</form>
	

	<table>

		<%
			List<String> listIds = new ArrayList<String>();
			String[] listIdsTab = Personne.listIds();
			for (int i = 0; i < listIdsTab.length; i++) {
				listIds.add(listIdsTab[i]);
			}

			String id = request.getParameter("id");

			if (id != null && id != "" && listIds.contains(id)) {

				out.print("<h3>Informations sur la personne</h3>");

				Personne personne = Personne.get(id);
				out.print("<tr><td>Nom : </td><td>");
				out.println(personne.getNom());
				out.print("</td><tr><td>Prenom : </td><td>");
				out.println(personne.getPrenom());
				out.print("</td><tr><td>Email : </td><td>");
				out.println(personne.getEmail());
				out.print("</td></tr><tr><td>Id : </td><td>");
				out.println(personne.getId());
				out.print("</td><tr>");

			}
		%>
	</table>
</body>
</html>