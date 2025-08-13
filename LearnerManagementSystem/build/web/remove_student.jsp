<%-- 
    Document   : remove_student
    Created on : 20 Apr 2025, 3:15:09 AM
    Author     : Liberty Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Remove Student – LMS</title>
  <style>
    :root {
      --bg-light: #f4f7fa;
      --bg-white: #ffffff;
      --primary: #2c3e50;
      --accent: #c0392b;
      --accent-dark: #922b21;
      --text-dark: #333333;
      --border-light: #dcdfe3;
      --font: 'Segoe UI', Roboto, sans-serif;
    }

    /* Reset & Global */
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

    /* Container */
    .container {
      width: 100%;
      max-width: 600px;
      background: var(--bg-white);
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      padding: 2rem;
    }
    h1 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: var(--primary);
    }

    /* Form table */
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
      width: 40%;
      font-weight: bold;
      color: var(--primary);
    }
    form input[type="text"] {
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
      color: #fff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    form input[type="submit"]:hover {
      background-color: var(--accent-dark);
    }

    /* Navigation buttons */
    .button-group {
      display: flex;
      gap: 1rem;
      justify-content: center;
      flex-wrap: wrap;
    }
    .button-group input {
      padding: 0.6rem 1.2rem;
      border: none;
      border-radius: 4px;
      background-color: var(--primary);
      color: #fff;
      cursor: pointer;
      font-size: 1rem;
      transition: background-color 0.3s;
    }
    .button-group input:hover {
      background-color: var(--accent);
    }

    @media (max-width: 480px) {
      form td {
        display: block;
        width: 100%;
      }
      form td:first-child {
        margin-bottom: 0.5rem;
      }
      .button-group {
        flex-direction: column;
        gap: 0.75rem;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Remove Student</h1>
    <form action="MainServlet.do" method="POST">
      <table>
        <tr>
          <td>Enter Student Number:</td>
          <td>
            <input
              type="text"
              name="studentNumber"
              minlength="9"
              maxlength="9"
              pattern="\d{9}"
              title="Enter exactly 9 digits"
              required
            />
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input
              type="submit"
              name="param"
              value="REMOVE STUDENT"
            />
          </td>
        </tr>
      </table>
    </form>

    <div class="button-group">
      <input
        type="button"
        value="Go Back"
        onclick="history.back();"
      />
      <input
        type="button"
        value="Go to Menu"
        onclick="window.location.href='menu.jsp';"
      />
    </div>
  </div>
</body>
</html>
```