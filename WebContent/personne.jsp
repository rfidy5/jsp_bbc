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
	<h1>Informations sur la personne</h1>

	<%
			String nom = request.getParameter("nom");
			String[] listIdsTab=Personne.listIds();
			        for(int i =0; i< listIdsTab.length; i++)
			{
				if(Personne.get(listIdsTab[i]){
					Personne personne = Personne.get(nom);
					out.println(personne.getNom());
			
					
					out.println(personne.getPrenom());
					out.println(personne.getEmail());
					out.println(personne.getId());
				}
				else if(Personne.get(listIdsTab[i]).getNom() != nom){
					out.print("la personne n'existe pas dans l'annuaire");
				}
			}
			%>
</body>
</html>