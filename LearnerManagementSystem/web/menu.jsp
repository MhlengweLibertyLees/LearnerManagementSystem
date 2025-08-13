<%-- 
    Document   : menu
    Created on : 20 Apr 2025, 1:11:37 AM
    Author     : Liberty Engetelo Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Menu Page – LMS</title>
  <style>
    :root {
      --primary-color: #2c3e50;
      --accent-color: #2980b9;
      --text-color: #555;
      --footer-bg: #ecf0f1;
      --font-family: 'Segoe UI', Roboto, sans-serif;
    }

    html, body {
      height: 100%;
      margin: 0;
    }

    body {
      font-family: var(--font-family);
      display: flex;
      flex-direction: column;
      background-color: var(--primary-color);
    }

    .container {
      flex: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      background-color: #fff;
      padding: 2rem;
      text-align: center;
    }

    h1 {
      font-size: 2.5rem;
      margin-bottom: 0.5rem;
      color: var(--primary-color);
    }

    h4 {
      font-size: 1.125rem;
      margin-bottom: 2rem;
      color: var(--text-color);
    }

    ul {
      list-style: none;
      padding: 0;
      margin: 0;
      width: 100%;
      max-width: 400px;
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    ul li {
      width: 100%;
    }

    a.menu-link,
    input[type="submit"] {
      display: inline-block;
      width: 100%;
      padding: 0.75rem 1.2rem;
      background-color: var(--accent-color);
      color: #fff;
      text-decoration: none;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
      box-sizing: border-box;
    }

    a.menu-link:hover,
    input[type="submit"]:hover {
      background-color: #1f6391;
    }

    form {
      margin: 0;
      width: 100%;
    }

    footer {
      background-color: var(--footer-bg);
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
      color: var(--text-color);
    }

    @media (max-width: 600px) {
      .container {
        padding: 1rem;
      }

      h1 {
        font-size: 2rem;
      }

      h4 {
        font-size: 1rem;
      }

      a.menu-link,
      input[type="submit"] {
        font-size: 0.95rem;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Menu</h1>
    <h4>Choose an option to manage learners:</h4>
    <ul>
      <li><a class="menu-link" href="add_student.jsp">Add Student</a></li>
      <li><a class="menu-link" href="search_student.jsp">Search Student</a></li>
      <li><a class="menu-link" href="change_student.jsp">Change Qualification</a></li>
      <li><a class="menu-link" href="remove_student.jsp">Remove Student</a></li>
      <li><a class="menu-link" href="partial_list.jsp">Partial List</a></li>
      <li>
        <form action="MainServlet.do" method="POST">
          <input class="menu-link" type="submit" name="param" value="Display All Students">
        </form>
      </li>
      <li><a class="menu-link" href="index.html">Go to Home Page</a></li>
    </ul>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
