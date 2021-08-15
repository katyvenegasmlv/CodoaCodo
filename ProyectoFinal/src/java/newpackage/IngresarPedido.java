/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author kvenegas3
 */
public class IngresarPedido extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         
             Persistencia base=new Persistencia();
         base.insertarSQL("INSERT INTO pedidos (email,telefono,provincia,localidad,cp,tipo_domicilio,calle,numero,piso_depto,tipo_tarjeta,n_tarjeta,f_vto,producto,cant_producto,color_prod,talle_prod) VALUES('"+request.getParameter("inputmail")+"','"+request.getParameter("inputtel") +"','"+request.getParameter("inputprov")+"','"+request.getParameter("inputloc") +"','"+request.getParameter("inputcp")+"','"+request.getParameter("inputdom")+"','"+request.getParameter("inputcalle")+"','"+request.getParameter("inputnum")+"','"+request.getParameter("inputpiso")+"','"+request.getParameter("inputttarj")+"','"+request.getParameter("inputntarj")+"','"+request.getParameter("inputnvto")+"','"+request.getParameter("inputproducto")+"','"+request.getParameter("inputcantprod")+"','"+request.getParameter("inputcolorprod")+"','"+request.getParameter("inputtalleprod")+"')" );            
  
         response.sendRedirect("CompraRealizada.jsp");
 
        }
        catch (Exception e)
        {
        System.err.println("Got an exception!");
        System.err.println(e.getMessage());
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
