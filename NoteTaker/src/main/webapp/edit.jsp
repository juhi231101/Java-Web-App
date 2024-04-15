<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allCssJs.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<h2 class="text-uppercase text-center" style="color: purple;">Modify
			Note</h2>
	</div>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id"));
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);

	s.close();
	%>

	<div class="mx-auto" style="width: 90em;">

		<form action="ModifyServlet" method="post">
		<input name="note_id"  type="hidden" value="<%=note.getId()%>"/>
			<div class="form-group">
				<label for="title">Title</label> <input type="text" name="title"
					class="form-control" id="title" aria-describedby="emailHelp"
					required placeholder="Enter title" value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note</label>
				<textarea id="content" name="content" class="form-control" required
					placeholder="Enter Notes Here" style="height: 200px;"><%=note.getContent()%></textarea>
			</div>
			<button type="submit" class="btn btn-lg btn-block ">Save
				Note</button>
		</form>
	</div>



</body>
</html>