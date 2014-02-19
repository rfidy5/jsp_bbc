<%@ taglib uri='WEB-INF/tlds/template.tld' prefix='template' %>

<template:insert template='/template.jsp'>
  <template:put name='title' content='Templates'
    direct='true'/>
  <template:put name='header' content='/header.html' />
  <template:put name='sidebar' content='/sidebar.html' />
  <template:put name='content'
    content='/ListePersonne.jsp'/>
  <template:put name='footer' content='/footer.html' />
</template:insert>
  