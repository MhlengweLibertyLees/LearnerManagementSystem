<%-- 
    Document   : partial_list.jsp
    Created on : 24 Apr 2025, 7:33:53 AM
    Author     : Liberty Chauke
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Partial List – LMS</title>
  <style>
    :root {
      --bg-light:     #f4f7fa;
      --bg-white:     #ffffff;
      --primary:      #2c3e50;
      --accent:       #27ae60;
      --accent-hover: #1e8449;
      --link:         #2980b9;
      --link-hover:   #1c5980;
      --text-dark:    #333333;
      --border-light: #e1e5ea;
      --footer-bg:    #ecf0f1;
      --font:         'Segoe UI', Roboto, sans-serif;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    html, body {
      height: 100%;
      font-family: var(--font);
      background-color: var(--bg-light);
      color: var(--text-dark);
    }
    body { display: flex; flex-direction: column; min-height: 100vh; }

    /* NAVBAR */
    nav.navbar {
      background-color: var(--primary);
      display: flex; align-items: center;
      padding: 1rem 2rem;
    }
    nav.navbar .logo {
      color: var(--bg-white);
      font-size: 1.5rem;
      font-weight: bold;
      text-decoration: none;
    }
    nav.navbar .nav-links {
      margin-left: auto;
      display: flex; align-items: center;
    }
    nav.navbar .nav-links a,
    nav.navbar .nav-links button {
      color: var(--bg-white);
      background: none;
      border: none;
      font: inherit;
      cursor: pointer;
      margin-left: 1.5rem;
      position: relative;
      padding-bottom: 2px;
      text-decoration: none;
    }
    nav.navbar .nav-links a.active::after,
    nav.navbar .nav-links button.active::after {
      content: '';
      position: absolute;
      bottom: -2px; left: 0;
      width: 100%; height: 2px;
      background: var(--accent);
    }
    nav.navbar .nav-links a:hover,
    nav.navbar .nav-links button:hover {
      opacity: 0.85;
    }

    /* MAIN CARD */
    .container {
      flex: 1;
      max-width: 600px;
      margin: 2rem auto;
      background-color: var(--bg-white);
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      padding: 2rem;
    }
    .container h1 {
      text-align: center;
      color: var(--primary);
      margin-bottom: 1.5rem;
    }

    /* FORM */
    form table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1.5rem;
    }
    form td {
      padding: 0.75rem;
      vertical-align: middle;
    }
    form td:first-child {
      font-weight: bold;
      color: var(--primary);
      width: 40%;
    }
    form input[type="number"] {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid var(--border-light);
      border-radius: 4px;
      font-size: 1rem;
    }
    form input[type="submit"] {
      width: 100%;
      padding: 0.75rem;
      background-color: var(--accent);
      color: var(--bg-white);
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    form input[type="submit"]:hover {
      background-color: var(--accent-hover);
    }

    /* BUTTON GROUP */
    .button-group {
      display: flex;
      gap: 1rem;
      justify-content: center;
      flex-wrap: wrap;
    }
    .button-group input {
      padding: 0.6rem 1.4rem;
      border: none;
      border-radius: 4px;
      background-color: var(--primary);
      color: var(--bg-white);
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .button-group input:hover {
      background-color: var(--accent);
    }

    /* FOOTER SPACER */
    footer {
      background-color: var(--footer-bg);
      text-align: center;
      padding: 1rem 0;
      font-size: 0.9rem;
      color: var(--text-dark);
    }

    /* RESPONSIVE */
    @media (max-width: 480px) {
      .container { padding: 1rem; }
      form td {
        display: block;
        width: 100%;
      }
      form td:first-child { margin-bottom: 0.5rem; }
      .button-group { flex-direction: column; }
    }
  </style>
</head>
<body>
  <nav class="navbar">
    <a href="menu.jsp" class="logo">LMS</a>
    <div class="nav-links">
      <a href="menu.jsp">Home</a>
      <a href="partial_list.jsp">Partial List</a>
      <a href="display_students.jsp">Students</a>
      <a href="add_student.jsp">Add Student</a>
    </div>
  </nav>

  <div class="container">
    <h1>Partial List</h1>
    <form action="MainServlet.do" method="POST">
      <!-- gateway param for servlet -->
      <input type="hidden" name="param" value="partialList"/>
      <table>
        <tr>
          <td>Enter minimum number:</td>
          <td>
            <input type="number" name="num1" required />
          </td>
        </tr>
        <tr>
          <td>Enter maximum number:</td>
          <td>
            <input type="number" name="num2" required />
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" value="Get Partial List" />
          </td>
        </tr>
      </table>
    </form>

    <div class="button-group">
      <input type="button" value="Go Back" onclick="history.back()" />
      <input type="button" value="Main Menu" onclick="location.href='menu.jsp'" />
    </div>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke
  </footer>
</body>
</html>
