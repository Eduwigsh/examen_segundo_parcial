<%-- 
    Document   : consultar
    Created on : 8/06/2021, 02:50:17 AM
    Author     : eduwi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="CSS/consultar.css">
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
<body>
    <div class="main-container">
        <div class="general-table">
        <h1>Sabores</h1>
            <table class="tabla">
                <thead class="tonto">
                    <tr class="tabla">
                        <th class="tabla bob">ID</th>
                        <th class="tabla bob">sabor</th>
                        <th class="tabla bob">costo</th>
                       
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
        </div>
    </div>
    </body>
</html>