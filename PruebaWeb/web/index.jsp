<%-- 
    Document   : index
    Created on : 10-10-2017, 12:10:54 AM
    Author     : ZERO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Doctores</title>
        </head>
        <body>
            <h1>Formulario Ingreso Doctores</h1>    <%-- start web service invocation --%><hr/>
    <%
    try {
	cl.service.webservice.Queryws_Service service = new cl.service.webservice.Queryws_Service();
	cl.service.webservice.Queryws port = service.getQuerywsPort();
	 // TODO initialize WS operation arguments here
         
	int id = Integer.parseInt(request.getParameter("codigo"));
	java.lang.String nombre = request.getParameter("nombre");
	java.lang.String apellido = request.getParameter("apellido");
	int telefono = Integer.parseInt(request.getParameter("telefono"));
	// TODO process result here
	java.lang.String result = port.ingresardoctor(id, nombre, apellido, telefono);
	out.println("Result = "+result);
    } catch (Exception ex) {
	out.println("No se ingreso correctamente");
    }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	cl.service.webservice.Queryws_Service service = new cl.service.webservice.Queryws_Service();
	cl.service.webservice.Queryws port = service.getQuerywsPort();
	 // TODO initialize WS operation arguments here
	int codigo = Integer.parseInt(request.getParameter("id"));;
	// TODO process result here
	java.lang.String result = port.buscardoctor(codigo);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
  
   
    <form action="index.jsp" method="post">
        <table>
            <tr>
                <th>Codigo:</th>
                <td><input type="text" name="codigo" size="10" required></td>
            </tr>
            <tr>
                <th>Nombre:</th>
                <td><input type="text" name="nombre" size="20" required></td>
            </tr>
            <tr>
                <th>Apellido:</th>
                <td><input type="text" name="apellido" size="20" required></td>
            </tr>
            <tr>
                <th>Telefono</th>
                <td><input type="text" name="telefono" size="30" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Enviar"></td>
            </tr>
        </table>
    </form>
    
    <h1>Buscar Doctor</h1>
    <form action="index.jsp" method="post">
        <table>
            <tr>
                <th>Codigo:</th>
                <td><input type="text" name="id" size="10" requerided></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Buscar"></td>
            </tr>
        </table>
    </form>
    
    
        </body>
    </html>