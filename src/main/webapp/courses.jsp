<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Courses - LearnPlatform</title>
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
        .courses-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin-top: 2rem; }
        .course-card { padding: 2rem; border: 1px solid #e2e8f0; border-radius: 0.5rem; text-align: center; }
        .btn { display: inline-block; padding: 0.5rem 1rem; text-decoration: none; border-radius: 0.375rem; background: #2563eb; color: white; }
    </style>
</head>
<body>
    <header class="header">
        <nav class="navbar">
            <div class="logo">💻 LearnPlatform</div>
            <ul class="nav-list">
                <li><a href="index.jsp" class="nav-link">Home</a></li>
                <li><a href="courses.jsp" class="nav-link" style="color: #2563eb;">Courses</a></li>
                <li><a href="about.jsp" class="nav-link">About</a></li>
            </ul>
        </nav>
    </header>

    <main class="container">
        <h1>Our Courses</h1>
        <div class="courses-grid">
            <div class="course-card">
                <div style="font-size: 2.5rem; margin-bottom: 1rem;">🌐</div>
                <h3>HTML5</h3>
                <p>Learn modern web development with HTML5</p>
                <a href="#" class="btn">Start Learning</a>
            </div>
            <div class="course-card">
                <div style="font-size: 2.5rem; margin-bottom: 1rem;">🎨</div>
                <h3>CSS3</h3>
                <p>Master styling and responsive design</p>
                <a href="#" class="btn">Start Learning</a>
            </div>
            <div class="course-card">
                <div style="font-size: 2.5rem; margin-bottom: 1rem;">⚡</div>
                <h3>JavaScript</h3>
                <p>Client-side scripting and interactivity</p>
                <a href="#" class="btn">Start Learning</a>
            </div>
        </div>
    </main>
</body>
</html>