<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Try it Yourself — DevOps4All</title>
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>
  <main class="container try-container" role="main">
    <h1>Try it Yourself — HTML / CSS / JS</h1>
    <div class="editor">
      <label for="code" class="visually-hidden">HTML/CSS/JS code editor</label>
      <textarea id="code" aria-label="Code editor" spellcheck="false">
<!doctype html>
<html>
<head><meta charset="utf-8"><title>Example</title></head>
<body>
  <h1>Hello from DevOps4All TryIt</h1>
  <p>Edit me and click Run.</p>
</body>
</html>
      </textarea>

      <div class="editor-actions">
        <button id="run-btn" class="btn">Run</button>
        <button id="reset-btn" class="btn btn-ghost">Reset</button>
      </div>
    </div>

    <div class="preview" aria-live="polite">
      <iframe id="preview" title="Preview area" sandbox="allow-scripts allow-forms"></iframe>
    </div>
  </main>

  <script src="assets/js/script.js" defer></script>
</body>
</html>
