<%-- 
    Document   : change_student_output
    Created on : 20 Apr 2025, 3:11:14 AM
    Author     : Liberty Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Change Student Qualification – LMS</title>
  <style>
    :root {
      --primary-color: #2c3e50;
      --accent-color: #27ae60;
      --accent-hover: #1e8449;
      --link-color: #2980b9;
      --link-hover: #1c5980;
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
      color: var(--text-color);
    }

    .container {
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #fff;
      padding: 2rem;
      text-align: center;
    }

    h1 {
      font-size: 2.5rem;
      margin-bottom: 1rem;
      color: var(--primary-color);
    }

    h4 {
      font-size: 1.25rem;
      color: var(--accent-color);
      margin-bottom: 2rem;
    }

    .button-group a {
      display: inline-block;
      margin: 0.5rem;
      padding: 0.75rem 1.5rem;
      background-color: var(--link-color);
      color: white;
      text-decoration: none;
      border-radius: 4px;
      font-size: 1rem;
      transition: background-color 0.3s ease;
    }

    .button-group a:hover {
      background-color: var(--link-hover);
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
        font-size: 1.1rem;
      }

      .button-group a {
        width: 100%;
        margin: 0.5rem 0;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Change Student's Qualification</h1>
    <%
      String msg = (String)request.getAttribute("message");
    %>
    <h4><%= msg %></h4>

    <div class="button-group">
      <a href="index.html">Main Page</a>
      <a href="menu.jsp">Menu Options</a>
    </div>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
