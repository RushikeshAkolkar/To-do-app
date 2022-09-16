<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
    <%@page import="com.crud.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark purple w-100" margin-bottom:10px>
  <a class="navbar-brand" href="index.jsp">NoteTacker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Addnote.jsp">Add Note</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="all_note.jsp">Show Notes</a>
      </li>
    </ul>
    <form action="" method="get" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" name="q" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-lignt my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
  <%
  Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
  Statement stmt=null;
  ResultSet r=null;
  stmt=con.createStatement();
  String search=request.getParameter("q");
  String data="select * from note where title like '%"+search+"%' or contant like '%"+search+"%'";
  r=stmt.executeQuery(data);
  while(r.next())
  {
	  %>
	 <div class="card mt-3"><h6 class="text-center mt-3"><b><%= r.getString(3) %></b></h6>
 	 <img class="card-img-top m-4 mx-auto" style="width:150px;height:150px" src="notes.png" alt="Card image cap">
  	<div class="card-body">
    <h5 class="card-title"><%= r.getString(4) %></h5>
    <p class="card-text px-5"><%= r.getString(2) %></p>
    <center><a href="DeleteServlet?note_id=<%= r.getInt(1) %> "  class="btn btn-outline-danger" >Delete</a>
    <a href="edit.jsp?note_id=<%= r.getInt(1) %> "class="btn btn-outline-primary" >Update</a></center>
    
  </div>
</div>
  <%
  }
  con.close();
  %>
</body>
</html>