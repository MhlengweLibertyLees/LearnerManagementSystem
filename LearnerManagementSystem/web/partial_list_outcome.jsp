<%-- 
    Document   : display_students
    Created on : 20 Apr 2025, 3:25:30 AM
    Author     : Liberty Chauke
--%>
<%@page import="za.ac.tut.entities.Learner"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Partial List Outcome – LMS</title>
  <style>
    :root {
      --bg-light: #f4f7fa;
      --bg-white: #ffffff;
      --primary: #2c3e50;
      --accent: #2980b9;
      --accent-dark: #1f6391;
      --text-dark: #333333;
      --border-light: #e1e5ea;
      --table-row-alt: #f9fbfd;
      --font: 'Segoe UI', Roboto, sans-serif;
    }

    /* Reset & Base */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    html, body {
      height: 100%;
      background: var(--bg-light);
      font-family: var(--font);
      color: var(--text-dark);
    }
    body {
      display: flex;
      justify-content: center;
      padding: 2rem 1rem;
    }

    /* Container */
    .container {
      width: 100%;
      max-width: 800px;
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

    /* Table */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1.5rem;
    }
    th, td {
      padding: 0.75rem 1rem;
      border: 1px solid var(--border-light);
      text-align: left;
    }
    th {
      background: var(--primary);
      color: #fff;
    }
    tr:nth-child(even) td {
      background: var(--table-row-alt);
    }

    /* No-data message */
    .no-data {
      text-align: center;
      font-style: italic;
      margin: 2rem 0;
      color: var(--accent-dark);
    }

    /* Button group */
    .button-group {
      display: flex;
      gap: 1rem;
      justify-content: center;
      flex-wrap: wrap;
    }
    .button-group button {
      padding: 0.6rem 1.4rem;
      border: none;
      border-radius: 4px;
      background-color: var(--accent);
      color: #fff;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .button-group button:hover {
      background-color: var(--accent-dark);
    }

    @media (max-width: 600px) {
      th, td {
        padding: 0.5rem;
        font-size: 0.9rem;
      }
      .button-group {
        flex-direction: column;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Partial List Outcome</h1>

    <%
      List<Learner> list = (List<Learner>) request.getAttribute("list");
      if (list != null && !list.isEmpty()) {
    %>
      <table>
        <tr>
          <th>Student Number</th>
          <th>Name</th>
          <th>Surname</th>
          <th>Date of Birth</th>
          <th>Qualification</th>
          <th>Timestamp</th>
        </tr>
        <% for (Learner learner : list) { %>
          <tr>
            <td><%= learner.getStudentNumber() %></td>
            <td><%= learner.getName() %></td>
            <td><%= learner.getSurname() %></td>
            <td><%= learner.getBirthDate() %></td>
            <td><%= learner.getQualification() %></td>
            <td><%= learner.getTimestamp() %></td>
          </tr>
        <% } %>
      </table>
    <%
      } else {
    %>
      <p class="no-data">No learners found matching the criteria.</p>
    <%
      }
    %>

    <div class="button-group">
      <button type="button" onclick="history.back()">Go Back</button>
      <button type="button" onclick="window.location.href='menu.jsp'">Main Menu</button>
    </div>
  </div>
</body>
</html>
