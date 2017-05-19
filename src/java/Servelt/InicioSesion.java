/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelt;

import controlador.consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.usuario;

/**
 *
 * @author IAN
 */
public class InicioSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contrasena");

        consultas con = new consultas();
        if (request.getParameter("btniniciar") != null) {

            HttpSession sesion = request.getSession(true);

            int nivel = con.validarnivel(usuario, contraseña);
            if (con.autenticacion(usuario, contraseña) == true) {
                sesion.setAttribute("usuario", usuario);
                sesion.setAttribute("nivel", nivel);
                response.sendRedirect("iniCli.jsp");
            } else {
                out.println("<!DOCTYPE html>");
                out.println("<script type='text/javascript'>  alert('El usuario no existe. o contraseña incorrecta!');</script>");
                out.println("<META HTTP-EQUIV='REFRESH' CONTENT='0;URL=http://localhost:8080/FutbolColombia/iniciarSesion.jsp'>");
            }
//            switch (nivel) {
//                case 1:
//                    sesion.setAttribute("usuario", usuario);
//                    sesion.setAttribute("nivel", nivel);
//                    response.sendRedirect("iniCli.jsp");
//
//                    break;
//
//                case 2:
//                    sesion.setAttribute("usuario", usuario);
//                    sesion.setAttribute("nivel", "2");
//                    response.sendRedirect("iniAdmin.jsp");
//                    break;
//
//                case 3:
//                    sesion.setAttribute("usuario", usuario);
//                    sesion.setAttribute("nivel", nivel);
//                    response.sendRedirect("iniCli.jsp");
//
//                    break;
//
//                default:
//                    out.println("<!DOCTYPE html>");
//                    out.println("<script type='text/javascript'>  alert('El usuario no existe. o contraseña incorrecta!');</script>");
//                    out.println("<META HTTP-EQUIV='REFRESH' CONTENT='0;URL=http://localhost:8080/FutbolColombia/iniciarSesion.jsp'>");
//                    break;
//            }
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

}
