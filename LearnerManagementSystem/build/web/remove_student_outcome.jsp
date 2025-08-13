<%-- 
    Document   : remove_student_outcome
    Created on : 20 Apr 2025, 3:23:02 AM
    Author     : Liberty Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Remove Student Outcome – LMS</title>
  <style>
    :root {
      --bg-light: #f4f7fa;
      --bg-white: #ffffff;
      --primary: #2c3e50;
      --accent: #27ae60;
      --accent-dark: #1e8449;
      --text-dark: #333333;
      --font: 'Segoe UI', Roboto, sans-serif;
      --border-light: #e1e5ea;
    }

    /* Reset */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: var(--font);
      background-color: var(--bg-light);
      color: var(--text-dark);
      display: flex;
      justify-content: center;
      align-items: flex-start;
      min-height: 100vh;
      padding: 2rem 1rem;
    }

    .container {
      width: 100%;
      max-width: 600px;
      background: var(--bg-white);
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.06);
      padding: 2rem;
      text-align: center;
    }

    h1 {
      color: var(--primary);
      margin-bottom: 1.5rem;
    }

    .message-box {
      background-color: var(--bg-light);
      border: 1px solid var(--border-light);
      border-radius: 4px;
      padding: 1rem;
      margin-bottom: 1.5rem;
      font-size: 1.1rem;
      color: var(--text-dark);
    }

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
      background-color: var(--accent);
      color: #fff;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .button-group input:hover {
      background-color: var(--accent-dark);
    }

    @media (max-width: 480px) {
      .button-group {
        flex-direction: column;
        gap: 0.75rem;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Remove Student Outcome</h1>

    <%
      String msg = (String) request.getAttribute("message");
    %>
    <div class="message-box">
      <%= msg %>
    </div>

    <div class="button-group">
      <input type="button" value="Go Back" onclick="history.back();" />
      <input type="button" value="Go to Menu" onclick="window.location.href='menu.jsp';" />
    </div>
  </div>
</body>
</html>
