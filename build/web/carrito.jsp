<%-- 
    Document   : carrito
    Created on : 3/05/2021, 04:07:03 AM
    Author     : eduwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*,java.text.*"%>
<!DOCTYPE html>
  <head>
       
<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="./JS/carrito.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./CSS/carrito.css">
   
</head>
     <%
       
     Connection con=null;
     Statement set=null;
     ResultSet rs=null;
    
    
     String url, userName, password, driver;
    url="jdbc:mysql://us-cdbr-east-03.cleardb.com/heroku_164a81f9404682a";
    
     userName="bf098ddf661450";
     password="a90cec1d";
     driver = "com.mysql.jdbc.Driver";
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection(url, userName, password);
        set=con.createStatement();
        System.out.println("se a conectado");
        
    }catch(Exception e){
           System.out.println("no se ha conectado");
           System.out.println(e.getMessage());
           System.out.println(e.getStackTrace());
    }
 
   try{
                Class.forName(driver);
                
                con = DriverManager.getConnection(url, userName, password);
           %>
          
                          

       <body>
         <table>
    <tr id="tablaProducto">
        <td>nombre</td>
        <td>Cantidad de cono</td>
        <td>Cantidad de  vaso chico</td>
        <td>Cantidad de vasp mediano</td>
        <td>Cantidad de vaso grande</td>
        <td>Precio unitario</td>
        <td>Precio total</td>
        <td>Eliminar</td> 
        
        </tr>
    </table>
            <% 
                String sabor, q, cono, vaso ,gordo, gordisimo;  
            int  cono_valor, vaso_valor ,gordo_valor, gordisimo_valor,costo;
                q = "select * from sabores";
                
                set = con.createStatement();
                rs = set.executeQuery(q);
                while(rs.next()){ 
                    sabor = rs.getString("nom_sab");
                    costo=Integer.parseInt( rs.getString("cos_sab"));
                    cono=sabor+"_cono";
                    vaso=sabor+"_vaso";
                    gordo=sabor+"_gordo";
                    gordisimo=sabor+"_gordisimo";
                    
                    cono_valor=Integer.parseInt(request.getParameter(cono));
                    vaso_valor=Integer.parseInt(request.getParameter(vaso));
                    gordo_valor=Integer.parseInt(request.getParameter(gordo));
                    gordisimo_valor=Integer.parseInt(request.getParameter(gordisimo));
                    
        %>                
  
        
        <% 
           System.out.println(cono_valor>0|vaso_valor>0|gordo_valor>0|gordisimo_valor>0);
            if(cono_valor>0|vaso_valor>0|gordo_valor>0|gordisimo_valor>0){
                
   %> 
     <table>
   <tr id="tablaProducto">     
        <td><%=sabor%></td>
            <td><%=cono_valor%></td>
            <td><%=vaso_valor%></td>
            <td><%=gordo_valor%></td>
            <td><%=gordisimo_valor%></td>
            <td><%=costo%></td>
            <td><%=(costo*cono_valor)+(costo*vaso_valor)+(costo*gordo_valor)+(costo*gordisimo_valor)%></td>
            <td>  <input type="button" class="borrar" value="Eliminar" /></td>
           
        </tr>
                    <%
                      
                        }
                  
                %>
                
             </table>     
               
                <% 
                }%>
               
            <%
            }catch(Exception e){
                System.out.println("Error al conectar la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            %>
        <h1>Sitio en Construcción</h1>            
         <%
            }
             
            %> 

      
    </body>
</html>
