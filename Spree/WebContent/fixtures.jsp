<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.*"
     import="java.util.ArrayList"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Fixtures</title>

<link rel="stylesheet" href="sheets/sheet1.css">
<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>
</head>
	<body>
		<div id='cssmenu'>
			<ul>
			  <li><a href="home.jsp">Home</a></li>
			  <li><a href="news.jsp">News</a></li>
			  <li><a href="events.jsp">Events</a></li>
			  <li><a href="teams.jsp">Teams</a></li>
			  <li><a href="live.jsp">Live</a></li>
			  <li><a href="fixtures.jsp"><font color= "#666666">Fixtures</font></a></li>
			  <li><a href="results.jsp">Results</a></li>
			  <li><a href="photos.jsp">Photos</a></li>
			  <li><a href="videos.jsp">Videos</a></li> 
			  <li><a href="pointstable.jsp">Points Table</a></li>
			  <% spree.Participant currentUser = (Participant)(session.getAttribute("currentSessionUser")); 
			  if (currentUser!=null) { %>
			  <li><a href="logout.jsp">Logout</a></li>
			  <% } else { %>
			  <li><a href="login.jsp">Login</a></li>
			  <li><a href="register.jsp">Register</a></li>
			  <% } %>
			  <li><a href="https://www.facebook.com/bitsspree">Follow us</a></li>
			  <li><a href="about.jsp">About</a></li>
			  <% if (currentUser != null) { %>
			<p>Logged in as <font color="#ff0000"><% out.print(currentUser.getDetails().getStudentName());%></font></p>
			<% } %> 
			</ul>
		</div>
		<div id="fixtures">
			<h2>Fixtures</h2>
			<table>
			<tr>
				<th>Sport</th>
				<th>Location</th>
				<th>Date</th>
				<th>Team-1</th>
				<th>Team-2</th>
				<th>Result</th>
			</tr>
			<% if (currentUser != null) {
				ArrayList<Fixture> fixtures = currentUser.getFixtures();
				for (int i=0; i<fixtures.size(); i++) {
					%>
					<tr>
					<td>
					<%
					out.println(fixtures.get(i).getSport().getSportName());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getLocation());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getDate());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getTeams().get(0).getTeamName());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getTeams().get(1).getTeamName());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getResult());
					%>
					</td>
					<td>
					<%
				}
				%>
				</tr>
				<%
			 } %> 
			 </table>
		</div>
	</body>
</html>