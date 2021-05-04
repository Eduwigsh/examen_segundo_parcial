

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
    <a href="index.html"><img src="./IMG/LOGOBJ.png" id="logobd"></a><a href="sabores.jsp" ><label class="titulo">Sabores</label></a><a href="acercade.html"><label class="titulo">Acerca de</label></a><a href="iniciarSesion.html"><img id="carrito" src="./IMG/carrito.jpg"></a>
    </header>
<body>
    <nav id="texto"> 
    Sabores
    <br>
    ¿Cómo te gusta tu euforia? Existen tantas maneras de disfrutar Ben & Jerry’s. Nos aseguramos el éxito con un buen chocolate y una vainilla galardonada, pero vamos mucho más lejos, con más de 60 sabores para satisfacer todos los paladares. ¡Vamos, date una vuelta!
    <br>
    En Ben and Jerry's tenemos una gran variedad de exqusitos sabores pero pueden cambiar en tienda y en
    <br> 
    Sabores en nuestras tiendas de helados
    <br>
    </nav>
    <div id="sabores">
    <table>
        <form method="post" name="formularioregistro" action="carrito.jsp">
        <thead>
            <tr>
                <td>
                    Saboress
                </td>
                <td>
                    como se ve
                </td>
                <td>
                    Precio
                </td>
                <td>
                    comprado
                </td>
        </thead> 
        <tr>
            <td>
                Kawasaki
            </td>
            <td>
               <img src="./IMG/Kawasaki.jpg" id="KawasakiIMG" style="height: 6rem;
               width: 6rem;" >
            <td>
                $30 x litro
            </td>
            <td>
            
                <input type="number"name="Kawasaki" min="00" max="30" value="0" >
           
            </td>
        </tr>
        <tr>
            <td>
                Criko and Crysp
            </td>
            <td>
                <img src="./IMG/Kriko and Krisp.jpg" id="KrikoKrispIMG">
            </td>
            <td>
                $45 x litro
            </td>
            <td>
                
               
                    <input type="number"name="Criko_and_Crysp" min="00" max="30" value="0">
                
            </td>
        </tr>
        <tr>
            <td>
                Rey Julion
            </td>
            <td>
                <img src="./IMG/ReyJulion.jpg" id="ReyJulionIMG">
            </td>
            <td>
                $40 x litro
            </td>
            <td>
                
                    <input type="number" name="Rey_Julion" min="00" max="30" value="0" >
                
            </td>
        </tr>
        <tr>
            <td>
                Panza
            </td>
            <td>
                <img src="./IMG/Panza.jpg"  id="PanzaIMG">
            </td>
            <td>
                 $100 x litro
            </td>
            <td>
              
                    <input type="number" name="Panza" min="00" max="30" value="0" >
                          </td>
        </tr>
        <tr>
            <td>
                Tamal verde 
            </td>
            <td>
                <img src="./IMG/TamalVerde.jpg" id="TamalVerdeIMG">
            </td>
            <td>
                $69 x litro
            </td>
            <td>
            
                    <input type="number" name="Tamal_verde" min="00" max="30" value="0" >
               
                  
            </td>
        </tr>
        <tr>
            <td>
                Elotes con arta mayonesa y chile del que no pica
            </td>
            <td>
                <img src="./IMG/ElotesConHartaMayonesayChiledelquenoPica.jpg" id="ElotesIMG">
            </td>
            <td>
                $10,000 x litro
            </td>
            <td>
              
                    <input type="number" name="Elotes_con_arta_mayonesa_y_chile_del_que_no_pica"
                           min="00" max="30" value="0">
              
            </td>
        </tr>
        <tr>
            <td>
                Amarillo amarillo platano
            </td>
            <td>
                <img src="./IMG/AmarilloAmarilloPlatano.jpg" id="AmarilloPlatanoIMG">
            </td>
            <td>
                $420 x litro
            </td>
            <td>
            
                    <input type="number" name="Amarillo_amarillo_platano" min="00" max="30" value="0"  >
               
        </tr>
        <tr>
            <td>
                Moris and Cago 
            </td>
            <td>
                <img src="./IMG/Moris&Cago.jpg" id="MorisIMG">
            </td>
            <td>
                 $2 x litro
            </td>
            <td>
              
                    <input type="number" name="Moris_and_Cago" min="00" max="30" value="0" >
              
            </td>
        </tr>
        <tr>
            <td>
                Stripper but chocolate 
            </td>
            <td>
                <img src="./IMG/StripperbutChocolate.jpg" id="StripperChocolateIMG">
            </td>
            <td>
                $20 x litro
            </td>
            <td>
                 
                    <input type="number" name="Stripper_but_chocolate" min="00" max="30" value="0" >
             
            </td>
        </tr>
        <tr>
            <td>
                Striiper
            </td>
            <td>
                <img src="./IMG/Striiper.jpg" id="StriiperIMG">
            </td>
            <td>
                $38 x litro
            </td>
            <td>
                       
                    <input type="number" name="Striiper" min="00" max="30" value="0" >
              
            </td>
        </tr>
        <tr>
            <td>
                Enchilada Verde
            </td>
            <td>
                <img src="./IMG/EnchiladaVerde.jpg" id="EnchiladaVerdeIMG">
            </td>
            <td>
                $9999 x litro
            </td>
            <td>
                 
                <input type="number" name="Enchilada_Verde" min="00" max="30" value="0" >
               
            </td>
        </tr>
        <tr>
            <td>
                Tacos de buche 
            </td>
            <td>
                <img src="./IMG/TacosdeBuche.jpg" id="TacosBucheIMG">
            </td>
            <td>
                $40320 x litro
            </td>
            <td>
                      
                <input type="number" name="Tacos_de_buche" min="00" max="30" value="0"  >
              
            </td>
        </tr>
    </table>
        <input  type="submit" name="enviar" id="Enviar" value="Comprar">
      </form>     
   </div>
</body>

