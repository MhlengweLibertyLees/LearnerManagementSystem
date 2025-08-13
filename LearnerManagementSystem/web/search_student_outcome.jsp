<%@page import="za.ac.tut.entities.Learner"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Search Student Outcome</title>
  <style>
    :root {
      --bg-light: #f4f7fa;
      --bg-white: #ffffff;
      --primary: #2c3e50;
      --accent: #2980b9;
      --accent-dark: #1f6391;
      --text-dark: #333333;
      --border-light: #e1e5ea;
      --font: 'Segoe UI', Roboto, sans-serif;
    }

    /* Page reset & layout */
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
      padding: 2rem;
    }

    .container {
      width: 100%;
      max-width: 900px;
      background: var(--bg-white);
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      padding: 2rem;
    }

    h1 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: var(--primary);
    }

    /* Styled table */
    .styled-table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1.5rem;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }
    .styled-table thead {
      background-color: var(--primary);
      color: #fff;
    }
    .styled-table th,
    .styled-table td {
      padding: 0.75rem 1rem;
      text-align: left;
      border-bottom: 1px solid var(--border-light);
    }
    .styled-table tbody tr:nth-child(even) {
      background-color: var(--bg-light);
    }
    .styled-table tbody tr:hover {
      background-color: var(--accent);
      color: #fff;
      transition: background-color 0.3s;
    }

    /* Button group */
    .button-group {
      display: flex;
      gap: 1rem;
      justify-content: center;
    }
    .button-group input {
      padding: 0.6rem 1.2rem;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      background-color: var(--accent);
      color: #fff;
      transition: background-color 0.3s;
    }
    .button-group input:hover {
      background-color: var(--accent-dark);
    }

    @media (max-width: 600px) {
      .styled-table th,
      .styled-table td {
        padding: 0.5rem;
      }
      .button-group {
        flex-direction: column;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Search Student Outcome</h1>
    <table class="styled-table">
      <thead>
        <tr>
          <th>Student Number</th>
          <th>Name</th>
          <th>Surname</th>
          <th>Date of Birth</th>
          <th>Qualification</th>
          <th>Timestamp</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<Learner> list = (List<Learner>) request.getAttribute("list");
          String msg = (String) request.getAttribute("message");

          if (list != null && !list.isEmpty()) {
            for (Learner learner : list) {
        %>
        <tr>
          <td><%= learner.getStudentNumber() %></td>
          <td><%= learner.getName() %></td>
          <td><%= learner.getSurname() %></td>
          <td><%= learner.getBirthDate() %></td>
          <td><%= learner.getQualification() %></td>
          <td><%= learner.getTimestamp() %></td>
        </tr>
        <%
            }
          } else {
        %>
        <tr>
          <td colspan="6" style="text-align:center; padding:1rem;">
            <em><%= msg %></em>
          </td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>

    <div class="button-group">
      <input type="button" value="Go Back" onclick="history.back();" />
      <input type="button" value="Go to Menu" onclick="window.location.href='menu.jsp';" />
    </div>
  </div>
</body>
</html>
