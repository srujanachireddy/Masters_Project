<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>About — DevOps4All</title>
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
      </nav>
    </div>
  </header>

  <main class="container">
    <h1>About DevOps4All</h1>
    <p>DevOps4All is a sample learning platform built as a starter project for students and developers. It demonstrates a clean MVC layout using JSP/Servlets, accessible markup, and a "Try it Yourself" front-end editor for quick experimentation.</p>
    <h2>Goals</h2>
    <ul>
      <li>Practical, short tutorials</li>
      <li>Accessible examples (ARIA, semantic HTML)</li>
      <li>Production-like structure so you can extend it</li>
    </ul>
  </main>

  <footer class="site-footer">
    <div class="container"><p>&copy; <%= Calendar.getInstance().get(Calendar.YEAR) %> DevOps4All</p></div>
  </footer>
</body>
</html>
