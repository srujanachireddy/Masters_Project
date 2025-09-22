<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="DevOps4All — Learn DevOps and Cloud with concise interactive tutorials and try-it-yourself examples." />
  <title>DevOps4All — Learn DevOps, Dev, Ops</title>
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body class="site-root">
  <header class="site-header" role="banner">
    <div class="container header-inner">
      <a class="brand" href="index.jsp" aria-label="DevOps4All home">
        <span class="logo" aria-hidden="true">D4A</span>
        <span class="brand-text">DevOps4All</span>
      </a>

      <button id="menu-toggle" class="nav-toggle" aria-controls="primary-nav" aria-expanded="false">
        <span class="visually-hidden">Toggle menu</span>
        ☰
      </button>

      <nav id="primary-nav" class="primary-nav" role="navigation" aria-label="Primary">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="courses.jsp">Courses</a></li>
          <li><a href="try.jsp">Try it Yourself</a></li>
          <li><a href="about.jsp">About</a></li>
        </ul>
        <div class="nav-actions">
          <button id="dark-toggle" class="btn btn-ghost" aria-pressed="false">Dark</button>
        </div>
      </nav>
    </div>
  </header>

  <main id="main" class="container" role="main">
    <section class="hero" aria-labelledby="hero-title">
      <div>
        <h1 id="hero-title">Interactive DevOps & Web Tutorials — Built for learners</h1>
        <p class="lead">Short lessons, clean examples, and an integrated "Try it Yourself" editor so you can learn by doing.</p>
        <p>
          <a class="btn btn-primary" href="courses.jsp">Browse Courses</a>
          <a class="btn btn-outline" href="try.jsp">Try an Example</a>
        </p>
      </div>
      <div class="hero-code" aria-hidden="true">
        <pre><code>&lt;!-- Example snippet: Hello Servlet --&gt;
&lt;%@ page import="java.io.*" %&gt;
&lt;% out.println("Hello from JSP"); %&gt;</code></pre>
      </div>
    </section>

    <section class="features" aria-labelledby="features-title">
      <h2 id="features-title">What you'll get</h2>
      <div class="grid grid-3">
        <article>
          <h3>Guided Tutorials</h3>
          <p>Small learnable pages with code snippets and accessible examples.</p>
        </article>
        <article>
          <h3>Try-it Editor</h3>
          <p>Edit HTML/CSS/JS and preview instantly — great for front-end snippets.</p>
        </article>
        <article>
          <h3>Server Examples</h3>
          <p>Servlet and JSP samples that show backend patterns and MVC structure.</p>
        </article>
      </div>
    </section>

    <section class="featured-courses" aria-labelledby="courses-title">
      <h2 id="courses-title">Featured courses</h2>
      <div class="grid grid-cards">
        <article class="card" aria-labelledby="c1">
          <h3 id="c1">Intro to Docker</h3>
          <p>Containers, images, and practical commands.</p>
          <a class="btn btn-sm" href="courses.jsp#docker">View</a>
        </article>
        <article class="card" aria-labelledby="c2">
          <h3 id="c2">CI/CD with Jenkins</h3>
          <p>Pipelines, jobs, and a sample pipeline you can run.</p>
          <a class="btn btn-sm" href="courses.jsp#jenkins">View</a>
        </article>
        <article class="card" aria-labelledby="c3">
          <h3 id="c3">Cloud Basics</h3>
          <p>Intro to creating and securing cloud resources.</p>
          <a class="btn btn-sm" href="courses.jsp#cloud">View</a>
        </article>
      </div>
    </section>

    <section class="code-sample" aria-labelledby="sample-title">
      <h2 id="sample-title">Code snippet — "Try it Yourself"</h2>
      <pre class="code-block" aria-label="HTML snippet example"><code>&lt;!doctype html&gt;
&lt;html&gt;&lt;head&gt;&lt;meta charset="utf-8"&gt;&lt;/head&gt;
&lt;body&gt;&lt;h1&gt;Hello World&lt;/h1&gt;&lt;/body&gt;&lt;/html&gt;</code></pre>
      <p>
        <a class="btn btn-code" href="try.jsp" title="Open Try it Yourself">Try it Yourself</a>
      </p>
    </section>
  </main>

  <footer class="site-footer" role="contentinfo">
    <div class="container">
      <p>&copy; <%= Calendar.getInstance().get(Calendar.YEAR) %> DevOps4All — Built with care · <a href="about.jsp">About</a></p>
    </div>
  </footer>

  <script src="assets/js/script.js" defer></script>
</body>
</html>
