/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controller.DAOuser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.usuario;

/**
 *
 * @author E201
 */
public class RegistroServlets extends HttpServlet {
    usuario user = new usuario();
    DAOuser dao = new DAOuser();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        user.setNombre(request.getParameter("nombre"));
        user.setApellido(request.getParameter("apellido"));
        user.setEmail(request.getParameter("email"));
        user.setLenguaje(request.getParameter("lenguaje"));
        
        String[] hobby = request.getParameterValues("hobby");
        String hobc ="";
        for(int i = 0; i < hobby.length; i++){
            hobc = hobc +" "+hobby[i];
        }
        String nombre = user.getNombre();
        String apellido = user.getApellido();
        String email = user.getEmail();
        String lenguaje = user.getLenguaje();
        
        
        if(dao.registrarUsuario(nombre, apellido, email, lenguaje, hobc)){
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("indesfx.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
