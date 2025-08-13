<%@ page import="za.ac.tut.entities.Learner" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>All Students – LMS</title>
  <style>
    :root {
      --bg-light:    #f4f7fa;
      --bg-white:    #ffffff;
      --primary:     #2c3e50;
      --accent:      #27ae60;
      --accent-hover:#1e8449;
      --link:        #2980b9;
      --link-hover:  #1c5980;
      --text-dark:   #333333;
      --border-light:#e1e5ea;
      --row-alt:     #f9fbfd;
      --footer-bg:   #ecf0f1;
      --font:        'Segoe UI', Roboto, sans-serif;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: var(--font);
      background-color: var(--bg-light);
      color: var(--text-dark);
      display: flex; flex-direction: column;
      min-height: 100vh;
    }

    /* NAVBAR */
    nav.navbar {
      background-color: var(--primary);
      padding: 1rem 2rem;
      display: flex; align-items: center;
    }
    nav.navbar .logo {
      color: var(--bg-white);
      font-size: 1.5rem; font-weight: bold;
      text-decoration: none;
    }
    nav.navbar .nav-links {
      margin-left: auto;
      display: flex; align-items: center;
    }
    nav.navbar .nav-links a,
    nav.navbar .nav-links button {
      color: var(--bg-white);
      background: none;
      border: none;
      font: inherit;
      cursor: pointer;
      margin-left: 1.5rem;
      position: relative;
      padding: 0;
      line-height: 1;
      text-decoration: none;
      font-size: 1rem;
      padding-bottom: 2px;
    }
    nav.navbar .nav-links .active::after {
      content: '';
      position: absolute;
      bottom: -2px; left: 0;
      width: 100%; height: 2px;
      background: var(--accent);
    }
    nav.navbar .nav-links a:hover,
    nav.navbar .nav-links button:hover {
      opacity: 0.85;
    }

    /* MAIN CONTAINER */
    .container {
      flex: 1;
      max-width: 1000px; width: 100%;
      margin: 2rem auto;
      background-color: var(--bg-white);
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      padding: 2rem;
    }
    .container h1 {
      text-align: center;
      color: var(--primary);
      margin-bottom: 1.5rem;
      font-size: 2.5rem;
    }

    /* TABLE */
    table {
      width: 100%; border-collapse: collapse;
      margin-bottom: 2rem;
    }
    th, td {
      padding: 0.75rem 1rem;
      border: 1px solid var(--border-light);
      text-align: left;
    }
    th {
      background: var(--primary);
      color: var(--bg-white);
      font-weight: normal;
    }
    tr:nth-child(even) td { background-color: var(--row-alt); }
    .no-data {
      text-align: center;
      color: var(--link-hover);
      font-style: italic;
      margin: 2rem 0;
    }

    /* BUTTON GROUP */
    .button-group {
      display: flex; justify-content: center;
      gap: 1rem; flex-wrap: wrap;
    }
    .button-group button {
      background-color: var(--accent);
      color: var(--bg-white);
      border: none; border-radius: 4px;
      padding: 0.75rem 1.5rem;
      font-size: 1rem; cursor: pointer;
      transition: background-color 0.3s ease;
    }
    .button-group button:hover {
      background-color: var(--accent-hover);
    }

    /* FOOTER */
    footer {
      background-color: var(--footer-bg);
      text-align: center; padding: 1rem 0;
      font-size: 0.9rem; color: var(--text-dark);
    }

    /* RESPONSIVE */
    @media (max-width: 600px) {
      .container { padding: 1rem; }
      .container h1 { font-size: 2rem; }
      th, td { padding: 0.5rem; font-size: 0.9rem; }
      .button-group { flex-direction: column; }
      .button-group button { width: 100%; }
      nav.navbar { flex-direction: column; align-items: flex-start; }
      nav.navbar .nav-links { margin-top: 0.5rem; }
    }
  </style>
</head>
<body>
  <nav class="navbar">
    <a href="menu.jsp" class="logo">LMS</a>
    <div class="nav-links">
      <a href="menu.jsp">Home</a>

      <!-- POST form to servlet -->
      <form action="MainServlet.do" method="POST" style="margin:0;">
        <input type="hidden" name="param" value="Display All Students"/>
        <button type="submit" class="active">Students</button>
      </form>

      <a href="add_student.jsp">Add Student</a>
    </div>
  </nav>

  <div class="container">
    <h1>All Students</h1>

    <%
      List<Learner> list = (List<Learner>) request.getAttribute("list");
      if (list != null && !list.isEmpty()) {
    %>
      <table>
        <tr>
          <th>Student No.</th>
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
      <p class="no-data">No students to display.</p>
    <%
      }
    %>

    <div class="button-group">
      <button type="button" onclick="history.back()">Go Back</button>
      <button type="button" onclick="location.href='menu.jsp'">Main Menu</button>
    </div>
  </div>

  <footer>
    &copy; 2025 Liberty Engetelo Chauke. Developed and published in May 2025.
  </footer>
</body>
</html>
