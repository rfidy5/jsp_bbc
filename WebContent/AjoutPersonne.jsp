<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="fr.ifsic.tpjava.j2ee.Personne"%>

<%@ taglib uri='/WEB-INF/tlds/template.tld' prefix='template'%>
<%@ page errorPage="/exception.jsp"%>
<template:insert template='/template.jsp'>
	<template:put name='title' content='Templates' direct='true' />
	<template:put name='header' content='/header.html' />
	<template:put name='sidebar' content='/sidebar.html' />
	<template:put name='content' content='/AjoutPersonne.html' />
	<template:put name='footer' content='/footer.html' />
</template:insert>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertion dans la bd</title>
</head>
<body>

	<%   String nom= request.getParameter("nom");
	String prenom= request.getParameter("prenom");
	String mail= request.getParameter("mail");
	
	if(nom== "" && prenom =="" && mail==""){
		out.print("Vous devez remplir tous les champs");
	}
	else{
	
	Personne p = new Personne(nom, prenom, mail);
	Personne.add(p);
	}
%>


</body>
</html>