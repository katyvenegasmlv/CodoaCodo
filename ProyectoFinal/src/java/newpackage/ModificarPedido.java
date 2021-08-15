/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kvenegas3
 */
public class ModificarPedido extends HttpServlet {

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
            String ID;
    HttpSession sess = request.getSession(false);
    ID=sess.getAttribute("ID").toString(); 
            /* TODO output your page here. You may use following sample code. */
      Persistencia base = new Persistencia();
           ResultSet rs =base.consultaSQL( "select * from pedidos where idpedidos like '" +ID+"'");
            
           
            while(rs.next()){

            base=new Persistencia();
                base.insertarSQL("UPDATE pedidos SET telefono=" + "'" + request.getParameter("inputtel") + "' , provincia='"+request.getParameter("inputprov")+"', localidad='"+request.getParameter("inputloc") +"', cp='"+request.getParameter("inputcp")+"', tipo_domicilio='"+request.getParameter("inputdom")+"', calle='"+request.getParameter("inputcalle")+"', numero='"+request.getParameter("inputnum")+"', piso_depto='"+request.getParameter("inputpiso")+"', tipo_tarjeta='"+request.getParameter("inputttarj")+"', n_tarjeta='"+request.getParameter("inputntarj")+"', f_vto='"+request.getParameter("inputnvto")+"', producto='"+request.getParameter("inputproducto")+"', cant_producto='"+request.getParameter("inputcantprod")+"', color_prod='"+request.getParameter("inputcolorprod")+"', talle_prod='"+request.getParameter("inputtalleprod")+"' where idpedidos='" +ID+"'"); 
                
               response.sendRedirect("CompraRealizada.jsp");
               return;
            }
            
            
           
        }
        catch (SQLException ex) {
            Logger.getLogger(Checklogin.class.getName()).log(Level.SEVERE, null, ex);

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
