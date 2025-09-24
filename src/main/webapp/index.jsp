<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LearnPlatform - Professional Coding Education</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Modern CSS Reset */
        * { margin: 0; padding: 0; box-sizing: border-box; }
        
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --secondary: #8b5cf6;
            --accent: #f59e0b;
            --success: #10b981;
            --text: #1f2937;
            --text-light: #6b7280;
            --bg: #ffffff;
            --bg-secondary: #f8fafc;
            --bg-dark: #0f172a;
            --border: #e5e7eb;
            --shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1);
            --gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }

        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            line-height: 1.6;
            color: var(--text);
            background: var(--bg);
            overflow-x: hidden;
        }

        /* Header & Navigation */
        .header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--border);
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .navbar {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
        }

        .logo i {
            font-size: 1.8rem;
        }

        .nav-list {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        .nav-link {
            text-decoration: none;
            color: var(--text);
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 0.5rem;
            transition: all 0.3s ease;
        }

        .nav-link:hover, .nav-link.active {
            background: var(--primary);
            color: white;
        }

        .auth-buttons {
            display: flex;
            gap: 1rem;
        }

        /* Hero Section */
        .hero {
            background: var(--gradient);
            color: white;
            padding: 8rem 2rem 4rem;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000"><polygon fill="rgba(255,255,255,0.1)" points="0,1000 1000,0 1000,1000"/></svg>');
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            margin: 0 auto;
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            line-height: 1.1;
        }

        .hero-subtitle {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 2rem;
            border: none;
            border-radius: 0.5rem;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 1rem;
        }

        .btn-primary {
            background: white;
            color: var(--primary);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            border: 2px solid white;
        }

        .btn-secondary:hover {
            background: white;
            color: var(--primary);
        }

        /* Features Section */
        .features {
            padding: 5rem 2rem;
            background: var(--bg-secondary);
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--text);
        }

        .section-subtitle {
            text-align: center;
            color: var(--text-light);
            max-width: 600px;
            margin: 0 auto 3rem;
            font-size: 1.1rem;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .feature-card {
            background: white;
            padding: 2.5rem;
            border-radius: 1rem;
            text-align: center;
            box-shadow: var(--shadow);
            transition: transform 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            background: var(--gradient);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            font-size: 2rem;
            color: white;
        }

        /* Courses Preview */
        .courses-preview {
            padding: 5rem 2rem;
            background: white;
        }

        .courses-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .course-card {
            background: white;
            border-radius: 1rem;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: transform 0.3s ease;
            border: 1px solid var(--border);
        }

        .course-card:hover {
            transform: translateY(-5px);
        }

        .course-header {
            padding: 1.5rem;
            background: var(--gradient);
            color: white;
            text-align: center;
        }

        .course-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .course-content {
            padding: 1.5rem;
        }

        .course-title {
            font-size: 1.3rem;
            margin-bottom: 1rem;
            color: var(--text);
        }

        .course-meta {
            display: flex;
            justify-content: space-between;
            color: var(--text-light);
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        /* Stats Section */
        .stats {
            padding: 4rem 2rem;
            background: var(--bg-dark);
            color: white;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .stat-item {
            padding: 2rem;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
            background: linear-gradient(45deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -moz-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            color: transparent;
        }

        /* Footer */
        .footer {
            background: var(--bg-dark);
            color: white;
            padding: 3rem 2rem 1rem;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .footer-section h3 {
            margin-bottom: 1rem;
            color: white;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: #94a3b8;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: white;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid #334155;
            color: #94a3b8;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                gap: 1rem;
                padding: 1rem;
            }

            .nav-list {
                gap: 1rem;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero {
                padding: 6rem 1rem 3rem;
            }

            .features, .courses-preview {
                padding: 3rem 1rem;
            }
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in {
            animation: fadeInUp 0.6s ease-out;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <nav class="navbar">
            <a href="index.jsp" class="logo">
                <em class="fas fa-graduation-cap"></em>
                LearnPlatform
            </a>
            <ul class="nav-list">
                <li><a href="index.jsp" class="nav-link active">Home</a></li>
                <li><a href="courses.jsp" class="nav-link">Courses</a></li>
                <li><a href="about.jsp" class="nav-link">About</a></li>
                <li><a href="contact.jsp" class="nav-link">Contact</a></li>
            </ul>
            <div class="auth-buttons">
                <a href="login.jsp" class="btn btn-secondary">Login</a>
                <a href="register.jsp" class="btn btn-primary">Sign Up</a>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content fade-in">
            <h1 class="hero-title">Master Coding Skills with Professional Courses</h1>
            <p class="hero-subtitle">Join thousands of students learning HTML, CSS, JavaScript, Java, and more with industry-expert instructors</p>
            <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
                <a href="courses.jsp" class="btn btn-primary">
                    <em class="fas fa-play"></em>Start Learning Free
                </a>
                <a href="#features" class="btn btn-secondary">
                    <em class="fas fa-info-circle"></em>Learn More
                </a>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="features">
        <h2 class="section-title">Why Choose LearnPlatform?</h2>
        <p class="section-subtitle">We provide the best learning experience with cutting-edge technology and expert instructors</p>
        
        <div class="features-grid">
            <div class="feature-card fade-in">
                <div class="feature-icon">
                    <em class="fas fa-laptop-code"></em>
                </div>
                <h3>Hands-on Projects</h3>
                <p>Build real-world projects and portfolio pieces while learning</p>
            </div>
            
            <div class="feature-card fade-in">
                <div class="feature-icon">
                    <em class="fas fa-user-tie"></em>
                </div>
                <h3>Expert Instructors</h3>
                <p>Learn from industry professionals with years of experience</p>
            </div>
            
            <div class="feature-card fade-in">
                <div class="feature-icon">
                    <em class="fas fa-rocket"></em>
                </div>
                <h3>Career Support</h3>
                <p>Get job-ready with resume reviews and interview preparation</p>
            </div>
        </div>
    </section>

    <!-- Courses Preview -->
    <section class="courses-preview">
        <h2 class="section-title">Popular Courses</h2>
        <p class="section-subtitle">Start your journey with our most popular courses</p>
        
        <div class="courses-grid">
            <div class="course-card fade-in">
                <div class="course-header">
                    <div class="course-icon"><em class="fab fa-html5"></em></div>
                    <h3>HTML5 & CSS3</h3>
                </div>
                <div class="course-content">
                    <p>Master modern web development with semantic HTML and advanced CSS</p>
                    <div class="course-meta">
                        <span><em class="fas fa-clock"></em> 8 weeks</span>
                        <span><em class="fas fa-user-graduate"></em> Beginner</span>
                    </div>
                    <a href="courses.jsp" class="btn btn-primary" style="width: 100%; text-align: center;">Enroll Now</a>
                </div>
            </div>
            
            <div class="course-card fade-in">
                <div class="course-header">
                    <div class="course-icon"><em class="fab fa-js-square"></em></div>
                    <h3>JavaScript ES6+</h3>
                </div>
                <div class="course-content">
                    <p>Learn modern JavaScript with ES6+ features and frameworks</p>
                    <div class="course-meta">
                        <span><em class="fas fa-clock"></em> 12 weeks</span>
                        <span><em class="fas fa-user-graduate"></em> Intermediate</span>
                    </div>
                    <a href="courses.jsp" class="btn btn-primary" style="width: 100%; text-align: center;">Enroll Now</a>
                </div>
            </div>
            
            <div class="course-card fade-in">
                <div class="course-header">
                    <div class="course-icon"><em class="fab fa-java"></em></div>
                    <h3>Java Programming</h3>
                </div>
                <div class="course-content">
                    <p>Object-oriented programming and enterprise development</p>
                    <div class="course-meta">
                        <span><em class="fas fa-clock"></em> 16 weeks</span>
                        <span><em class="fas fa-user-graduate"></em> All Levels</span>
                    </div>
                    <a href="courses.jsp" class="btn btn-primary" style="width: 100%; text-align: center;">Enroll Now</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats">
        <div class="stats-grid">
            <div class="stat-item">
                <div class="stat-number">10,000+</div>
                <div>Active Students</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">200+</div>
                <div>Courses Available</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">50+</div>
                <div>Expert Instructors</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">95%</div>
                <div>Success Rate</div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>LearnPlatform</h3>
                <p>Transforming education through technology and innovation.</p>
                <div style="display: flex; gap: 1rem; margin-top: 1rem;">
                    <a href="#" style="color: #94a3b8;"><em class="fab fa-facebook fa-lg"></em></a>
                    <a href="#" style="color: #94a3b8;"><em class="fab fa-twitter fa-lg"></em></a>
                    <a href="#" style="color: #94a3b8;"><em class="fab fa-linkedin fa-lg"></em></a>
                    <a href="#" style="color: #94a3b8;"><em class="fab fa-github fa-lg"></em></a>
                </div>
            </div>
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="courses.jsp">All Courses</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Categories</h3>
                <ul class="footer-links">
                    <li><a href="courses.jsp">Web Development</a></li>
                    <li><a href="courses.jsp">Mobile Development</a></li>
                    <li><a href="courses.jsp">Data Science</a></li>
                    <li><a href="courses.jsp">Cloud Computing</a></li>
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Support</h3>
                <ul class="footer-links">
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Careers</a></li>
                </ul>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; 2024 LearnPlatform. All rights reserved. | Designed with ❤️ for learners worldwide</p>
        </div>
    </footer>

    <script>
        // Simple JavaScript for interactivity
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation to elements when they come into view
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('fade-in');
                    }
                });
            });

            document.querySelectorAll('.feature-card, .course-card').forEach(card => {
                observer.observe(card);
            });

            // Header scroll effect
            window.addEventListener('scroll', function() {
                const header = document.querySelector('.header');
                if (window.scrollY > 100) {
                    header.style.background = 'rgba(255, 255, 255, 0.98)';
                    header.style.boxShadow = '0 2px 20px rgba(0, 0, 0, 0.1)';
                } else {
                    header.style.background = 'rgba(255, 255, 255, 0.95)';
                    header.style.boxShadow = 'none';
                }
            });
        });
    </script>
</body>
</html>
