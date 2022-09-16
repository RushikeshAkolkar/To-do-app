<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.Session" %>
    <%@page import="org.hibernate.Query" %>
    <%@page import="com.helper.FactoryProvider" %>
    <%@page import="java.util.List" %>
    <%@page import="com.crud.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>All Note:Note Tacker</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body>

<%@include file ="all_js_css.jsp"%>
<%@include file ="navbar.jsp"%>

<div class="container-fluid p-0 m-0">
  <br>
  <h1 class="text-uppercase m-4">All Notes:</h1>
  <div class="row justify-content-center">
  <div class="col-6">
  
  <%
  
  Session se= FactoryProvider.getFactory().openSession();
  Query q = se.createQuery("from Note");
  List<Note> l = q.list();
  for(Note n :l)
  {
	  %>
	 <div class="card mt-3"><h6 class="text-center mt-3"><b><%= n.getDadd() %></b></h6>
 	 <img class="card-img-top m-4 mx-auto" style="width:150px;height:150px" src="notes.png" alt="Card image cap">
  	<div class="card-body">
    <h5 class="card-title"><%= n.getTitle() %></h5>
    <p class="card-text px-5"><%= n.getContant() %></p>
    <center><a href="DeleteServlet?note_id=<%= n.getId() %> "  class="btn btn-outline-danger" >Delete</a>
    <a href="edit.jsp?note_id=<%= n.getId() %> "class="btn btn-outline-primary" >Update</a></center>
    
  </div>
</div>
  <%
  }
  se.close();
  %>
    
  </div>
  
  </div>
  
</div>
</body>
</html>