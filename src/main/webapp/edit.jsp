<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.crud.Note,com.helper.*"%>
    <%@page import="org.hibernate.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file ="all_js_css.jsp"%>
</head>
<body>
<div class="container-fluid p-0 m-0">
  <%@include file ="navbar.jsp"%>
  <h1>THIS IS EDIT PAGE</h1>
  <%
  
  int id = Integer.parseInt(request.getParameter("note_id").trim());
  Session s= FactoryProvider.getFactory().openSession();
	Transaction tx = s.beginTransaction();
	
	Note obj = (Note)s.get(Note.class, id);
	
	s.update(obj);
	
	tx.commit();
	s.close();
  %>

  </div>
  <form action="UpdateServlet" method="post">
  <input name="noteid" value="<%= obj.getId()%>" type="hidden">
  <div class="form-group">
    <label for="title" >Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" value="<%= obj.getTitle() %>" placeholder="Enter here" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Contant</label>
    <textarea id="contant" name="contant" placeholder="Enter Your Content Here" class="form-control" style="height:300px"
     required><%=obj.getContant() %></textarea>
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary ">Update</button>
  </div>
</form>
</body>
</html>