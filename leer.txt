/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DAOUSUARIO;
import model.usuario;

/**
 *
 * @author PC-EDICION
 */
@WebServlet("srvUsuario")
public class srvUsuario extends HttpServlet {

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

        String accion = request.getParameter("action");
        System.out.println("Esta pasando por aqui");
        try {
            if (accion != null) {

                switch (accion) {
                    case "login":
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                        break;
                    default:
                        response.sendRedirect("login.jsp");
                }

            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            try {
                this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);
            } catch (IOException | ServletException ex) {
                System.out.println("Error srvUsuario: " + ex);
            }
        }

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
        processRequest(request, response);
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

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {

        System.out.println("Verificado");
        HttpSession sesion;
        DAOUSUARIO dao;
        usuario usuario;
        usuario = this.obtenerUsuario(request);
        dao = new DAOUSUARIO();
        usuario = dao.identificar(usuario);
        if (usuario != null && usuario.getCargoUsuario().equals("SADMIN")) {
            sesion = request.getSession();
            sesion.setAttribute("SADMIN", usuario);
            request.setAttribute("msje", "Bienvenido al Sistema");
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistas/panelAdmin.jsp").forward(request, response);

        } else if (usuario != null && usuario.getCargoUsuario().equals("Celador")) {
            sesion = request.getSession();
            sesion.setAttribute("Celador", usuario);
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistas/panelCelador.jsp").forward(request, response);
        } else {
            request.setAttribute("msje", "Credenciales Incorrectas");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }

    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", null);
        sesion.invalidate();
        response.sendRedirect("login.jsp");

    }

    private usuario obtenerUsuario(HttpServletRequest request) throws Exception {

        usuario u = new usuario();
        u.setNombreUsuario(request.getParameter("txtUser"));
        u.setPassUsuario(request.getParameter("txtPass"));
        return u;

    }

}
