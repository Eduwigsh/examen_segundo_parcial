/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Encargada de poder realizar la conexión con la BD
import java.sql.Connection;
import java.sql.DriverManager;
//Encargada de poder reaalizar las sentencias sql, creat, insert, delete, drop, update
import java.sql.Statement;
//Encrgada de poder realizar las consultas a la BD
import java.sql.ResultSet;
import javax.servlet.ServletConfig;
/**
 *
 * @author eduwi
 */
@WebServlet(urlPatterns = {"/adiministrador"})
public class adiministrador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private Connection con;
    private Statement set;
    private ResultSet rs;
    
     public void init(ServletConfig cfg) throws ServletException{
        String url = "jdbc:mysql://us-cdbr-east-03.cleardb.com/heroku_164a81f9404682a";
                    //driver:gestorBD:puerto//DirecciónIP/nombredelaBD
                    //jdbc:postgresql://THE_HOST/THE_DATABASE
        
        String userName = "bf098ddf661450";
        String password = "a90cec1d";
        
        try{
           
            Class.forName("com.mysql.jdbc.Driver");
            
            /* 
                A veces el Driver ya maneja por defecto el puerto de comunicación, es por ello que puede
                mandar un error, en ese caso
                
                url = "jdbc:mysql://localhost/registro4iv7";
            */

            con = DriverManager.getConnection(url, userName, password);
            set = con.createStatement();
            
            System.out.println("Se ha conectado a la BD");
            
        }catch(Exception e){
            System.out.println("No se ha conectado a la BD");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adiministrador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adiministrador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Modificar</title>");     
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Modificar Datos</h1>");
        
            
            int id_sab, cos_sab;
            
            
            
            //Filtro los datos en blanco
            
            try{
                
                id_sab = Integer.parseInt(request.getParameter("id"));
                cos_sab = Integer.parseInt(request.getParameter("cos_sab"));
                            /*
                Para poder Modificar es:
                update tabla set columnaAModificar = variable1 where columnaKey = variable2
            
                UPDATE mregistro SET appat_usu = variable1 where id_usu = variable2
            */
            
                //Aqui editare la base de datos 
            
            String q = "update sabores set cos_sab='"+cos_sab+"' where id_sab= "+id_sab+"";
          /*  update mregistro set nom_usu='"+nom+"'where
            */  
            set.executeUpdate(q);
              
            
            System.out.println("Datos modificados con exito");
            out.println("<h1>Se ha modificado correctamente el precio del sabor</h1>");
            
            
                
            }catch(Exception e){
                System.out.println("Error al modificar la tabla");
                System.out.println(e.getMessage());
                System.out.println(e.toString());
                
                
                out.println("<h1>Hubo un Error, Asegurese de llenar bien los datos y de tener el ID</h1>");
            }
            
            out.println("<br>\n" +
                    "        <a href='index.html'>Regresar al inicio</a>\n" +
                    "        <br>\n" +
                    "        <a href='sabores.jsp'></a>");
            out.println("</body>");
            out.println("</html>");
            
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
