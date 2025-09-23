<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>About - LearnPlatform</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
        
        .header { background: #fff; border-bottom: 1px solid #ddd; padding: 1rem 0; }
        .navbar { max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-between; padding: 0 1rem; }
        .logo { font-size: 1.5rem; font-weight: bold; }
        .nav-list { display: flex; list-style: none; gap: 2rem; }
        .nav-link { text-decoration: none; color: #666; }
        .nav-link:hover { color: #2563eb; }
        
        .container { max-width: 1200px; margin: 0 auto; padding: 2rem 1rem; }
    </style>
</head>
<body>
    <header class="header">
        <nav class="navbar">
            <div class="logo">💻 LearnPlatform</div>
            <ul class="nav-list">
                <li><a href="index.jsp" class="nav-link">Home</a></li>
                <li><a href="courses.jsp" class="nav-link">Courses</a></li>
                <li><a href="about.jsp" class="nav-link" style="color: #2563eb;">About</a></li>
            </ul>
        </nav>
    </header>

    <main class="container">
        <h1>About LearnPlatform</h1>
        <p>We provide high-quality programming education to help you master web development.</p>
        
        <h2>Our Mission</h2>
        <p>Make quality education accessible to everyone</p>
        
        <h2>Our Vision</h2>
        <p>Become the leading platform for tech education</p>
    </main>
</body>
</html>