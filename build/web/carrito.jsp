<%-- 
    Document   : carrito
    Created on : 3/05/2021, 04:07:03 AM
    Author     : eduwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*,java.text.*"%>
<!DOCTYPE html>
  <head>
       
<script src="https://code.jquery.com/jquery-2.1.4.js"></script>z
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
                
        try{
                int Kawasaki, Criko_and_Crysp, Rey_Julion, Panza,Tamal_verde,
                 Elotes_con_arta_mayonesa_y_chile_del_que_no_pica,Amarillo_amarillo_platano,
                 Moris_and_Cago,Stripper_but_chocolate,Striiper,Enchilada_Verde,Tacos_de_buche;  
                 
                   Kawasaki = Integer.parseInt(request.getParameter("Kawasaki"));
                  
                    Criko_and_Crysp = Integer.parseInt(request.getParameter("Criko_and_Crysp"));
                 
                    Rey_Julion =Integer.parseInt( request.getParameter("Rey_Julion"));
                  
                    Panza = Integer.parseInt(request.getParameter("Panza"));
                  
                    Tamal_verde =Integer.parseInt( request.getParameter("Tamal_verde"));
                   
                    Elotes_con_arta_mayonesa_y_chile_del_que_no_pica = Integer.parseInt(request.getParameter("Elotes_con_arta_mayonesa_y_chile_del_que_no_pica"));
                   
                    Amarillo_amarillo_platano = Integer.parseInt(request.getParameter("Amarillo_amarillo_platano"));
                    
                    Moris_and_Cago = Integer.parseInt(request.getParameter("Moris_and_Cago"));
                    
                    Stripper_but_chocolate = Integer.parseInt(request.getParameter("Stripper_but_chocolate"));
              
                    Enchilada_Verde = Integer.parseInt(request.getParameter("Enchilada_Verde"));
                 
                    Striiper = Integer.parseInt(request.getParameter("Striiper"));
                    
                    Tacos_de_buche = Integer.parseInt(request.getParameter("Tacos_de_buche"));
                 
                    
                    %>         
                  
       <body>
         <table>
    <tr id="tablaProducto">
        <td>Imagen</td>
        <td>Descripción de producto</td>
        <td>Cantidad</td>
        <td>Precio unitario</td>
        <td>Precio total</td>
        <td>Eliminar</td> 
        
        </tr>
    </table>
    <table>
        <tr id="tablaProducto"><%
            if(Kawasaki>0){
              
            
               %>
        <td class="">
            <img src="IMG/Kawasaki.jpg" class="lista">
          </td>
            <td class="">
     
        <div class="Descripcion">
            Nuesotro sabor mas refrescante 
            <h1>KAWASAKI</h1>
       
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
            <input placeholder="" class="" data-product-id="" name="" value="<%=Kawasaki 
                   %> "  type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=1";
                     int KAWASAKI_value=0;
                     int KAWASAKI_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            KAWASAKI_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=KAWASAKI_cos %>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=KAWASAKI_value=KAWASAKI_cos*Kawasaki %> </span>
            <% } %>
        </td>
        <td class="">
            <input type="button" class="borrar" value="Eliminar" />
        </td>
      
                    </tr>
        
           <% }   %>
           <%
            if(Criko_and_Crysp>0){
             
            
               %>
                <tr id="tablaProducto">
        <td class="">
            <img src="IMG/Kriko and Krisp.jpg" class="lista">
          </td>
            <td class="">
       
        
        <div class="Descripcion">
        Hecho con semillas de cafe colombiano, y con chispas de nuestro 
        chocale blanco especial
        <h1>Criko and Crysp</h1>
        <br>
        <span class="">
        
        <span>
         </span>
        </span>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%=Criko_and_Crysp %>" type="text" id=""> </div>
        </div>
        
        </td>
         <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=2";
                     int Criko_and_Crysp_value=0;
                     int Criko_and_Crysp_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Criko_and_Crysp_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Criko_and_Crysp_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Criko_and_Crysp_value=Criko_and_Crysp_cos*Criko_and_Crysp %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Rey_Julion>0){
            
            
               %>
        <td class="">
            <img src="IMG/ReyJulion.jpg" class="lista">
          </td>
            <td class="">
         
       
        <div class="Descripcion">
        sabor tropical directamente tradio de las isla
        Melova Mascar UwU
        <h1>REY JULION</h1>
       
        
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%=Rey_Julion%>" type="text" id=""> </div>
        </div>
        
        </td>
         <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=3";
                     int Rey_Julion_value=0;
                     int Rey_Julion_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Rey_Julion_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Rey_Julion_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Rey_Julion_value=Rey_Julion_cos*Panza %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
         </tr>
           <% }   %>
           <%
            if(Panza>0){
             
            
               %>
        <td class="">
            <img src="IMG/Panza.jpg" class="lista">
          </td>
            <td class="">
        
        
        <div class="Descripcion">
            ¿conoces la panza?
            Esto es igual.
            <h1> PANZA</h1>
       
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%=Panza%>" type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=4";
                     int Panza_value=0;
                     int Panza_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Panza_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Panza_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Panza_value=Panza_cos*Panza %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Tamal_verde>0){
             
            
               %>
        <td class="">
            <img src="IMG/TamalVerde.jpg" class="lista">
          </td>
            <td class="">
    
       
        <div class="Descripcion">
        Lo mejor de la comida Mexicana directo a tu cono
        <h1>TAMAL VERDE</h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="<%=Tamal_verde
               %>" type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=5";
                     int Tamal_verde_value=0;
                     int Tamal_verde_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Tamal_verde_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Tamal_verde_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Tamal_verde_value=Tamal_verde_cos*Tamal_verde %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Elotes_con_arta_mayonesa_y_chile_del_que_no_pica>0){
            
            
               %>
        <td class="">
            <img src="IMG/ElotesConHartaMayonesayChiledelquenoPica.jpg" class="lista">
          </td>
            <td class="">
        
        
        <div class="Descripcion">
        Dicen que no pica pero el chile si te pica
        <h1>ELOTES CON ARTA MAYONESA Y CHILE DEL QUE NO PICA </h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%=Elotes_con_arta_mayonesa_y_chile_del_que_no_pica%>" type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=12";
                     int Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_value=0;
                     int Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_value=Elotes_con_arta_mayonesa_y_chile_del_que_no_pica_cos*Elotes_con_arta_mayonesa_y_chile_del_que_no_pica %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Amarillo_amarillo_platano>0){
           
            
               %>
        <td class="">
            <img src="IMG/AmarilloAmarilloPlatano.jpg" class="lista">
          </td>
            <td class="">
         
        <div class="Descripcion">
       imposible que te la acabes toda
       <h1> AMARRILLO AMARILLO PLATANO</h1>
           
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%=Amarillo_amarillo_platano%>" type="text" id=""> </div>
        </div>
        
        </td>
         <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=6";
                     int Amarillo_amarillo_platano_value=0;
                     int Amarillo_amarillo_platano_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Amarillo_amarillo_platano_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Amarillo_amarillo_platano_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Amarillo_amarillo_platano_value=Amarillo_amarillo_platano_cos*Amarillo_amarillo_platano %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Moris_and_Cago>0){
               
            
               %>
        <td class="Descripcion">
            <img src="IMG/Moris&Cago.jpg" class="lista">
          </td>
            <td class="">
         
        <div class="">
            Simplente un sabor peculiar.
            <h1> MORIS AND CAGO</h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
            <input placeholder="" class="" data-product-id="" name="" value="<%=Moris_and_Cago
                    %>" type="text" id=""> </div>
        </div>
        
        </td>
        
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=7";
                     int Moris_and_Cago_value=0;
                     int Moris_and_Cago_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Moris_and_Cago_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Moris_and_Cago_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Moris_and_Cago_value=Moris_and_Cago_cos*Moris_and_Cago %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
           <%
            if(Stripper_but_chocolate>0){
            
            
               %>
        <td class="">
            <img src="IMG/StripperbutChocolate.jpg" class="lista">
          </td>
            <td class="">
       
        <div class="Descripcion">
       El sueño de hombre...
       <h1> STRIPPER BUT CHOCOLATE</h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="<%=
               Stripper_but_chocolate%>" type="text" id=""> </div>
        </div>
        
        </td>
       <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=8";
                     int Stripper_but_chocolate_value=0;
                     int Stripper_but_chocolate_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Stripper_but_chocolate_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Stripper_but_chocolate_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Stripper_but_chocolate_value=Stripper_but_chocolate_cos*Stripper_but_chocolate %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
             <%
            if(Striiper>0){
            
            
               %>
        <td class="">
            <img src="IMG/Striiper.jpg" class="lista">
          </td>
          <td class="">
            
        <div class="Descripcion">
       Dice tu tio que la puedes probar
       <h1>STRIIPER</h1>
       
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input class="" data-product-id="" name="" value="
               <%= Striiper%>" type="text" id=""> </div>
        </div>
        
        </td>
         <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=9";
                     int Striiper_value=0;
                     int Striiper_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Striiper_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Striiper_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Striiper_value=Striiper_cos*Striiper %> </span>
            <% } %>
       
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
             <%
            if(Enchilada_Verde>0){
            
               %>
        <td class="">
            <img src="IMG/EnchiladaVerde.jpg" class="lista">
          </td>
            <td class="">
        
        <div class="Descripcion">
            Un majar para tu paladar(hecho para personas finas)
            <h1> ENCHILADA VERDE</h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%= Enchilada_Verde %>" type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
       
            <%String q = "select cos_sab from sabores where id_sab=10";
                     int Enchilada_Verde_value=0;
                     int Enchilada_Verde_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Enchilada_Verde_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Enchilada_Verde_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Enchilada_Verde_value=Enchilada_Verde_cos*Enchilada_Verde %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
                    </tr>
           <% }   %>
             <%
            if(Tacos_de_buche>0){
              
            
               %>
        <td class="">
            <img src="IMG/TacosdeBuche.jpg" class="lista">
          </td>
            <td class="">
        
        <div class="Descripcion">
        No hay de asada no mas de buche
        <h1> TACOS DE BUCHE </h1>
        </div>
        </td>
        <td class="">
        <div class="">
        <div class="">
        <div class="">
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        <div class="">
        <span class=""><i class=""></i></span>
        </div>
        </div>
        <input placeholder="" class="" data-product-id="" name="" value="
               <%= Tacos_de_buche%>" type="text" id=""> </div>
        </div>
        
        </td>
        <td class="">
        
            <%String q = "select cos_sab from sabores where id_sab=11";
                     int Tacos_de_buche_value=0;
                     int Tacos_de_buche_cos;
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            Tacos_de_buche_cos=Integer.parseInt(rs.getString("cos_sab"));
                                   %>
                                <%=Tacos_de_buche_cos%>
     
                                    
        </td>
        <td class="">
        <span class="">
            <%=Tacos_de_buche_value=Tacos_de_buche_cos*Tacos_de_buche %> </span>
            <% } %>
        </td>
        <td class=""><td class="">
           <input type="button" class="borrar" value="Eliminar" />
      </td>
        </tr>
           <% }   %>
           
    </table>
  <%
                        set.close();
                
                }catch(SQLException ed){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(ed.getMessage());
                    %>
        <h1>Registro No Exitoso, error en la lectura de la tabla</h1>            
                    <%
                
                }
                con.close();
            
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
