/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.staffinfo;

/**
 *
 * @author Benz Chua Zi Chern 14303489
 */
import controller.Validator;
    import java.io.IOException;


    import javax.servlet.ServletException;

    import javax.servlet.http.HttpServlet;

    import javax.servlet.http.HttpServletRequest;

    import javax.servlet.http.HttpServletResponse;

    import javax.servlet.http.HttpSession;

    import dao.*;

    import java.util.ArrayList;

    import java.util.logging.Level;

    import java.util.logging.Logger;

    import model.*;


//AdminMenuServlet designed to go to AdminMenu on any page through a button. 
public class ViewStaffServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        StaffInfoManager manager = (StaffInfoManager) session.getAttribute("staffInfoManager");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String pos = request.getParameter("pos");
        Staff staff;
        clear(session);
        Boolean hasError;
        
        if (!validator.validateName(fname, lname)) {
            session.setAttribute("V_nameErr", "Error: Incorrect Name Format! First letter must be capital letter!");
            hasError=true;
        } 
        if (!(pos.equals("Employee") || pos.equals("Supervisor") || pos.equals("Manager"))) {
            session.setAttribute("V_posErr", "Error: Incorrect Position! Employee, Supervisor, Manager");
            hasError=true;
        }
        
        try {
            staff = manager.findStaff(fname, lname, pos);
            session.setAttribute("foundStaff", staff);
            // reset staffs attribute so that it comes with the most recent staff
            request.getRequestDispatcher("ViewStaff.jsp").include(request, response);
        } catch (Exception e) {
            Logger.getLogger(ViewStaffServlet.class.getName()).log(Level.SEVERE, null, e);
            if (e.getMessage().equals("Error: Account not found!")) {
                session.setAttribute("V_existErr", "Error: Account not found!");
            }
            request.getRequestDispatcher("ViewStaff.jsp").include(request, response);
        }
    }
        
    // set ErrorMsg below table in a label
    private void clear(HttpSession session) {
        session.setAttribute("V_nameErr", "");
        session.setAttribute("V_posErr", "");
        session.setAttribute("V_existErr", "");
    }    
        
    
    
}
