<%-- 
    Document   : add_student
    Created on : 20 Apr 2025, 1:17:21 AM
    Author     : Liberty Engetelo Chauke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add Student – LMS</title>
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
      justify-content: center;
      align-items: center;
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

    form {
      width: 100%;
      max-width: 600px;
      margin: 0 auto;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    td {
      padding: 0.5rem;
      vertical-align: top;
      text-align: left;
    }

    input[type="text"],
    input[type="date"] {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 1rem;
      box-sizing: border-box;
    }

    input[type="submit"] {
      width: 100%;
      padding: 0.75rem;
      background-color: var(--accent-color);
      color: #fff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #1f6391;
    }

    .links {
      margin-top: 2rem;
    }

    .links a {
      color: var(--accent-color);
      text-decoration: none;
      margin: 0.5rem;
      display: inline-block;
      transition: color 0.3s ease;
    }

    .links a:hover {
      color: #1f6391;
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

      td {
        display: block;
        width: 100%;
      }

      td:first-child {
        margin-bottom: 0.25rem;
        font-weight: bold;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Add Student</h1>
    <h4>Enter student's information below to add them to the database:</h4>

    <form action="MainServlet.do" method="POST">
      <table>
        <tr>
          <td>Student number:</td>
          <td>
            <input type="text" name="studentNumber"
                   minlength="9" maxlength="9"
                   pattern="\d{9}" title="Exactly 9 digits"
                   required>
          </td>
        </tr>
        <tr>
          <td>Name:</td>
          <td><input type="text" name="name" required></td>
        </tr>
        <tr>
          <td>Surname:</td>
          <td><input type="text" name="surname" required></td>
        </tr>
        <tr>
          <td>Birth date:</td>
          <td><input type="date" name="birthDate" required></td>
        </tr>
        <tr>
          <td>Qualification:</td>
          <td><input type="text" name="qualification" required></td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" name="param" value="ADD STUDENT">
          </td>
        </tr>
      </table>
    </form>

    <div class="links">
      <a href="index.html">Back to Main Page</a>
      <a href="menu.jsp">Back to Menu Options</a>
    </div>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
