package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.LearnerFacadeLocal;
import za.ac.tut.entities.Learner;

public class MainServlet extends HttpServlet {

    @EJB
    private LearnerFacadeLocal local;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String buttonSelected = request.getParameter("param");

        if (buttonSelected.equals("ADD STUDENT")) {
            String qualification = request.getParameter("qualification");
            String stuNum = request.getParameter("studentNumber");
            Long studentNumber = Long.parseLong(stuNum);
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String date = request.getParameter("birthDate");

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date birthDate = null;

            try {
                birthDate = sdf.parse(date);
            } catch (Exception e) {
                e.printStackTrace();
            }

            Date timestamp = new Date(); // Get the current timestamp

            boolean isValid = !stuNum.isEmpty() && studentNumber != null
                    && name != null && !name.isEmpty()
                    && surname != null && !surname.isEmpty()
                    && date != null && !date.isEmpty() && birthDate != null
                    && qualification != null && !qualification.isEmpty();

            if (isValid) {
                try {

                    local.create(new Learner(studentNumber, name, surname, birthDate, qualification, timestamp));
                    request.setAttribute("message", "Successfully added student to the database.");
                } catch (Exception e) {
                    request.setAttribute("message", "Failed to add student. Student number might already exist.");
                }
            } else {
                request.setAttribute("message", "Failed to add student to the database. Please check input values.");
            }

            RequestDispatcher disp = request.getRequestDispatcher("add_student_outcome.jsp");
            disp.forward(request, response);
        } else if (buttonSelected.equals("SEARCH STUDENT")) {
            String studNum = request.getParameter("studentNumber");

            try {
                Long studentNumber = Long.parseLong(studNum);

                Learner learner = local.find(studentNumber);

                if (learner != null) {
                    List<Learner> list = new ArrayList<>();
                    list.add(learner);
                    request.setAttribute("list", list);
                } else {
                    request.setAttribute("message", "Student doesn't exist in the database");
                }
            } catch (NumberFormatException e) {
                request.setAttribute("message", "Invalid student number format");
            } catch (Exception e) {
                request.setAttribute("message", "An error occurred while searching for the student");
            }

            RequestDispatcher disp = request.getRequestDispatcher("search_student_outcome.jsp");
            disp.forward(request, response);
        } else if (buttonSelected.equals("CHANGE QUALIFICATION")) {
            String studNum = request.getParameter("studentNumber");
            Long studentNumber = Long.parseLong(studNum);

            String newQualification = request.getParameter("newQualification");

            boolean isValid = !studNum.isEmpty() && studentNumber != null
                    && !newQualification.isEmpty() && newQualification != null;

            if (isValid) {
                try {
                    Learner learner = local.find(studentNumber);
                    learner.setQualification(newQualification);
                    local.edit(learner);

                    request.setAttribute("message", "Student qualificatiion changedd successsfully");
                } catch (Exception e) {
                    request.setAttribute("message", "student number doesn't exist");
                }
            } else {
                request.setAttribute("message", "Failed to change Student's qualificatiion ");
            }
            RequestDispatcher disp = request.getRequestDispatcher("change_student_output.jsp");
            disp.forward(request, response);
        } else if (buttonSelected.equals("REMOVE STUDENT")) {
            String studNum = request.getParameter("studentNumber");
            Long studentNumber = Long.parseLong(studNum);

            boolean isValid = !studNum.isEmpty() && studentNumber != null;

            if (isValid) {
                try {
                    Learner learner = local.find(studentNumber);
                    local.remove(learner);
                    request.setAttribute("message", "Student has been successfully removed. ");
                } catch (Exception e) {
                    request.setAttribute("message", "Student number doesn't exist. ");
                }
            } else {
                request.setAttribute("message", "Failed to remove student. ");
            }
            RequestDispatcher disp = request.getRequestDispatcher("remove_student_outcome.jsp");
            disp.forward(request, response);
        } else if (buttonSelected.equals("DISPLAY ALL STUDENT")) {
            List<Learner> list = local.findAll();
            request.setAttribute("list", list);

            RequestDispatcher disp = request.getRequestDispatcher("display_students.jsp");
            disp.forward(request, response);

        } else if (buttonSelected.equals("GET PARTIAL LIST")) {
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            Integer number1 = Integer.parseInt(num1);
            Integer number2 = Integer.parseInt(num2);

            int[] range = {number1 - 1, number2 - 1};

            List<Learner> list = local.findRange(range);
            request.setAttribute("list", list);

            RequestDispatcher disp = request.getRequestDispatcher("display_students.jsp");
            disp.forward(request, response);
        } else if (buttonSelected.equals("Display All Students")) {
            List<Learner> list = local.findAll();
            request.setAttribute("list", list);

            RequestDispatcher disp = request.getRequestDispatcher("display_students.jsp");
            disp.forward(request, response);
        }

    }

}
