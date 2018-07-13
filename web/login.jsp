<%-- 
    Document   : login
    Created on : 04/05/2018, 17:13:03
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String msg="";
if(request.getMethod().equals("POST")){
    if(request.getParameter("txtLogin").equals("admin")
     && request.getParameter("txtSenha").equals("123")){
        //salvar session
        session.setAttribute("administrador", request.getParameter("txtLogin"));
        //vai pra página inicial
        response.sendRedirect("home/");
        return;
    }
    else{
        msg="Login/senha incorretos";
                 
    }
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <%=msg%>
        <form action="#" method="post">
            <label>Login:</label>
            <input  type="text" name="txtLogin" />
            <br/>
            <label>Senha:</label>
            <input  type="password" name="txtSenha" />
            <br/>
            <button type="submit" >OK</button>
        </form>
    </body>
</html>
