<%-- 
    Document   : search_student
    Created on : 20 Apr 2025, 2:16:44 AM
    Author     : Liberty Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Search Student – LMS</title>
  <style>
    :root {
      --primary-bg: #2c3e50;
      --card-bg: #ffffff;
      --accent: #2980b9;
      --text-color: #333333;
      --font-family: 'Segoe UI', Roboto, sans-serif;
    }

    html, body {
      height: 100%;
      margin: 0;
    }

    body {
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: var(--primary-bg);
      font-family: var(--font-family);
      color: var(--text-color);
      padding: 1rem;
      box-sizing: border-box;
    }

    .container {
      background-color: var(--card-bg);
      width: 100%;
      max-width: 600px;
      display: flex;
      flex-direction: column;
      align-items: stretch;
      padding: 2rem;
      box-sizing: border-box;
      text-align: center;
    }

    h1 {
      margin: 0 0 1rem;
      font-size: 2rem;
      color: var(--primary-bg);
    }

    form {
      width: 100%;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1rem;
    }

    td {
      padding: 0.5rem;
      vertical-align: middle;
    }

    input[type="text"] {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 1rem;
      box-sizing: border-box;
    }

    input[type="submit"],
    input[type="button"] {
      width: 100%;
      padding: 0.75rem;
      background-color: var(--accent);
      color: #fff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
      box-sizing: border-box;
      margin-top: 0.5rem;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
      background-color: #1f6391;
    }

    .button-group {
      display: flex;
      gap: 1rem;
      margin-top: 1rem;
    }

    .button-group input {
      flex: 1;
      width: auto;
    }

    @media (max-width: 480px) {
      .container {
        padding: 1rem;
      }
      h1 {
        font-size: 1.5rem;
      }
      td {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
      }
      td:first-child {
        margin-bottom: 0.25rem;
        font-weight: bold;
      }
      input[type="text"],
      input[type="submit"],
      input[type="button"] {
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Search Student</h1>
    <form action="MainServlet.do" method="POST">
      <table>
        <tr>
          <td>Enter student number:</td>
          <td>
            <input
              type="text"
              name="studentNumber"
              minlength="9"
              maxlength="9"
              pattern="\d{9}"
              title="Enter exactly 9 digits"
              required
            >
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input
              type="submit"
              name="param"
              value="SEARCH STUDENT"
            >
          </td>
        </tr>
      </table>
    </form>

    <div class="button-group">
      <input
        type="button"
        value="Go Back"
        onclick="history.back();"
      >
      <input
        type="button"
        value="Go to Menu"
        onclick="window.location.href='menu.jsp';"
      >
    </div>
  </div>
</body>
</html>
