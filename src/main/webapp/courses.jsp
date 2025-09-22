<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.example.model.Course" %>
<%@ page import="java.util.stream.*" %>
<%
  // Small example dataset to simulate MVC model population.
  List<Course> courses = new ArrayList<>();
  courses.add(new Course("docker", "Docker Fundamentals", "Containers, images, and hands-on examples."));
  courses.add(new Course("jenkins", "CI/CD with Jenkins", "Pipelines, automation and best practices."));
  courses.add(new Course("cloud", "Cloud Fundamentals", "Basics of cloud architecture and security."));
%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Courses — DevOps4All</title>
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>
  <header class="site-header">
    <div class="container header-inner">
      <a class="brand" href="index.jsp">DevOps4All</a>
      <nav>
        <a href="index.jsp">Home</a>
        <a href="courses.jsp">Courses</a>
        <a href="try.jsp">Try it</a>
        <a href="about.jsp">About</a>
      </nav>
    </div>
  </header>

  <main class="container">
    <h1>Courses</h1>
    <div class="grid grid-cards">
      <% for(Course c : courses) { %>
        <article class="card" id="<%= c.getId() %>">
          <h2><%= c.getTitle() %></h2>
          <p><%= c.getDescription() %></p>
          <p><a class="btn btn-sm" href="#">Open</a></p>
        </article>
      <% } %>
    </div>
  </main>

  <footer class="site-footer">
    <div class="container"><p>&copy; <%= Calendar.getInstance().get(Calendar.YEAR) %> DevOps4All</p></div>
  </footer>

  <script src="assets/js/script.js" defer></script>
</body>
</html>
