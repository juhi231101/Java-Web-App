<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="allCssJs.jsp"%>

<title>View Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<h2 class="text-uppercase text-center" style="color: purple;">All
			Notes</h2>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for(Note n:list){
		%>
		<div class="card mx-auto p-2 mt-3"  style="width: 90rem;">
			<div class="card-body">
			<img alt="Note" src="Images/note.png" style="height:30px;" >
			<p class="date "><%= n.getDate() %></p>
				<h5 class="card-title"><%= n.getTitle()  %></h5>
				<p class="card-text"><%= n.getContent() %></p>
				<a href="edit.jsp?note_id=<%= n.getId() %>" class="btn btn-outline-info">Modify Note</a>
				<a href="DeleteServlet?note_id=<%= n.getId() %>" class="btn btn-outline-danger">Delete Note</a>
			</div>
		</div>

		<%
		}
		
		s.close();
		%>

	</div>

</body>
</html>