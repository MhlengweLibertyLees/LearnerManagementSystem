<%-- 
    Document   : change_student
    Created on : 20 Apr 2025, 2:50:37 AM
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
    }

    h1 {
      font-size: 2.5rem;
      margin-bottom: 1.5rem;
      color: var(--primary-color);
      text-align: center;
    }

    form {
      background-color: #f4f7fa;
      padding: 2rem;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      max-width: 500px;
      width: 100%;
    }

    table {
      width: 100%;
    }

    td {
      padding: 0.75rem 0;
    }

    label {
      font-weight: 500;
      display: block;
      margin-bottom: 0.25rem;
    }

    input[type="text"] {
      width: 100%;
      padding: 0.6rem;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 1rem;
    }

    input[type="submit"] {
      background-color: var(--accent-color);
      color: white;
      padding: 0.75rem 1.5rem;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
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

      form {
        padding: 1.5rem;
      }

      input[type="submit"] {
        width: 100%;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Change Student's Qualification</h1>

    <form action="MainServlet.do" method="POST">
      <table>
        <tr>
          <td>
            <label for="studentNumber">Enter student number:</label>
            <input type="text" id="studentNumber" name="studentNumber" 
                   minlength="9" maxlength="9"
                   pattern="\d{9}" title="Exactly 9 digits"
                   required>
          </td>
        </tr>
        <tr>
          <td>
            <label for="newQualification">Enter new qualification:</label>
            <input type="text" id="newQualification" name="newQualification" required>
          </td>
        </tr>
        <tr>
          <td style="text-align: center;">
            <input type="submit" value="CHANGE QUALIFICATION" name="param">
          </td>
        </tr>
      </table>
    </form>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
