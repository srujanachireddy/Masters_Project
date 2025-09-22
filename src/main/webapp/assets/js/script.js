// script.js - minimal interactivity: menu toggle, dark mode, and TryIt run
(function () {
    // Menu toggle (mobile)
    const menuToggle = document.getElementById('menu-toggle');
    const primaryNav = document.getElementById('primary-nav');
    if (menuToggle && primaryNav) {
      menuToggle.addEventListener('click', () => {
        const expanded = menuToggle.getAttribute('aria-expanded') === 'true';
        menuToggle.setAttribute('aria-expanded', String(!expanded));
        primaryNav.classList.toggle('open');
      });
    }
  
    // Dark mode toggle
    const darkToggle = document.getElementById('dark-toggle');
    if (darkToggle) {
      // initialize from localStorage
      const saved = localStorage.getItem('d4a-dark');
      if (saved === '1') document.body.classList.add('dark'), darkToggle.setAttribute('aria-pressed','true');
      darkToggle.addEventListener('click', () => {
        const isDark = document.body.classList.toggle('dark');
        darkToggle.setAttribute('aria-pressed', String(isDark));
        localStorage.setItem('d4a-dark', isDark ? '1' : '0');
      });
    }
  
    // Try-it editor: run code into iframe
    const runBtn = document.getElementById('run-btn');
    const resetBtn = document.getElementById('reset-btn');
    const codeEl = document.getElementById('code');
    const preview = document.getElementById('preview');
  
    if (runBtn && codeEl && preview) {
      runBtn.addEventListener('click', () => {
        const html = codeEl.value;
        // write into iframe — safe for demo; iframe has sandbox attribute.
        const doc = preview.contentDocument || preview.contentWindow.document;
        doc.open();
        doc.write(html);
        doc.close();
      });
    }
  
    if (resetBtn && codeEl) {
      resetBtn.addEventListener('click', () => {
        codeEl.value = `<!doctype html>
  <html>
  <head><meta charset="utf-8"><title>Example</title></head>
  <body>
    <h1>Hello from DevOps4All TryIt</h1>
    <p>Edit me and click Run.</p>
  </body>
  </html>`;
      });
    }
  
  })();
  