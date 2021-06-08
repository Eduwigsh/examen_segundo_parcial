<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
   <!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sabores</title>
    <link rel="stylesheet" href="CSS/sabores.css">
   <%
       
     Connection con=null;
     Statement set=null;
    ResultSet rs=null;
    String q;
    
    String url="jdbc:mysql://us-cdbr-east-03.cleardb.com/heroku_164a81f9404682a";
    String userName="bf098ddf661450";
    String password="a90cec1d";
    
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
    %>
</head>
<header>
    <div class="top-container">
        <a href="index.html">
            <img src="./IMG/LOGOBJ.png" id="logobd">
        </a>
        <a href="sabores.jsp" >
            <label class="titulo">Sabores</label>
        </a>
        <a href="acercade.html">
            <label class="titulo">Acerca de</label>
        </a>
        <a href="iniciarSesion.html">
            <img id="carrito" src="./IMG/carrito.jpg">
        </a>
    </div>
</header>
<body>
    <div class="text-container">
    <nav id="texto"> 
        <section class="temtom-cont">Sabores</section>
        <br>
        <section class="temtom-cont">¿Cómo te gusta tu euforia? Existen tantas maneras de disfrutar Ben & Jerry’s. Nos aseguramos el éxito con un buen chocolate y una vainilla galardonada, pero vamos mucho más lejos, con más de 60 sabores para satisfacer todos los paladares. ¡Vamos, date una vuelta!</section>
        <br>
        <section class="temtom-cont">En Ben and Jerry's tenemos una gran variedad de exqusitos sabores pero pueden cambiar en tienda y en sabores en nuestras tiendas de helados</section>
        <br>
    </nav>
    </div>
      <form method="post" name="formularioregistro" action="carrito.jsp">
     <div class="main-container">
        <div class="general-table">
        <h1>Sabores</h1>
        <div class="enviar">
            <nav class="porsiacaso">
            <table class="tabla">
                <thead class="tonto">
                    <tr class="tabla">
                        <th class="tabla bob">ID</th>
                        <th class="tabla bob">sabor</th>
                        <th class="tabla bob">costo</th>
                       <th class="tabla bob">cono</th>
                       <th class="tabla bob">Vaso chico</th>
                       <th class="tabla bob">Vaso mediano</th>
                       <th class="tabla bob">Vaso grande</th>
                    </tr>
                </thead>
                <tbody class="tonto">
 <%    
                    try{
              
                String sabor, costo;
                int  id;
                
                q = "select * from sabores";
                
                set = con.createStatement();
                rs = set.executeQuery(q);
                while(rs.next()){
                    id = rs.getInt("id_sab");
                    sabor = rs.getString("nom_sab");
                    costo = rs.getString("cos_sab");       
               %>
                    <tr class="tabla" >
                      <td class="tabla bob"><%=id %></td>
                        <td class="tabla bob"><%=sabor%></td>
                        <td class="tabla bob"><%=costo%></td>
                        <td><input type="number"name="<%=sabor%>_cono" min="0" max="30" value="0"></td>
                        <td><input type="number"name="<%=sabor%>_vaso" min="0" max="30" value="0"></td>
                        <td><input type="number"name="<%=sabor%>_gordo" min="0" max="30" value="0"></td>
                        <td><input type="number"name="<%=sabor%>_gordisimo" min="0" max="30" value="0"></td>                     
                    </tr>
                   <%     
                }
                
                System.out.println("Consulta exitosa");
                rs.close();
                set.close();
            
            }catch(Exception e){
                System.out.println("Error al consultar la tabla");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            };    
            %>          
                
                </tbody>
            </table>
            </div>
                <div class="enviar">
                <input  type="submit" name="enviar" id="Enviar" value="Comprar">
                </div>
        </div>
    </div>
    </form>
   
</body>