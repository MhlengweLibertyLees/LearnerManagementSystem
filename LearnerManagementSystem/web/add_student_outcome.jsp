<%-- 
    Document   : add_student_output
    Created on : 20 Apr 2025, 1:48:02 AM
    Author     : Liberty Engetelo Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add Student Outcome – LMS</title>
  <style>
    :root {
      --primary-color: #2c3e50;
      --accent-color: #27ae60;
      --accent-hover: #1e8449;
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

    .message-box {
      font-size: 1.125rem;
      margin-bottom: 2rem;
      background-color: #f4f7fa;
      padding: 1rem;
      border-radius: 6px;
      border: 1px solid #dfe4ea;
      max-width: 600px;
    }

    .button-group {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
      justify-content: center;
      margin-bottom: 2rem;
    }

    .button-group input {
      padding: 0.75rem 1.5rem;
      background-color: var(--accent-color);
      color: #fff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button-group input:hover {
      background-color: var(--accent-hover);
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

      .message-box {
        font-size: 1rem;
      }

      .button-group {
        flex-direction: column;
        gap: 0.75rem;
      }

      .button-group input {
        width: 100%;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Add Student Outcome</h1>
    <%
      String msg = (String)request.getAttribute("message");
    %>
    <div class="message-box">
      <%= msg %>
    </div>

    <div class="button-group">
      <input type="button" value="Go Back" onclick="history.back();" />
      <input type="button" value="Go to Menu" onclick="window.location.href='menu.jsp';" />
      <input type="button" value="Home Page" onclick="window.location.href='index.html';" />
    </div>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
