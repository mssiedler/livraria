<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg ="";
String classe = "";
    
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    //verifica se é postm ou seja, quer alterar
    if(request.getMethod().equals("POST")){ 
        //popular com oq ele digitou no form    
        obj.setNome(request.getParameter("txtNome"));
        obj.setCnpj(request.getParameter("txtCnpj"));
        
        if(request.getParameter("txtLogo") != null){
            obj.setLogo(request.getParameter("txtLogo"));
        }
        
        Boolean resultado = dao.alterar(obj);
        
        if(resultado){
            msg = "Registro alterado com sucesso";
            classe = "alert-success";
        }
        else{
            msg = "Não foi possível alterar";
            classe = "alert-danger";
        }
        
    }else{
        //e GET
        if(request.getParameter("codigo") == null){
            response.sendRedirect("index.jsp");
            return;
        }
        
        dao = new EditoraDAO();
        obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtCnpj")));
        
        if(obj == null){
            response.sendRedirect("index.jsp");
            return;
        } 
    }
%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Sistema de Comércio Eletrônico
            <small>Admin</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Área Administrativa</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i> Aqui vai o conteúdo de apresentação
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            Editora
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
            <form action="#" method="post">
                
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Cnpj</label>
                        <input class="form-control" type="text" name="txtCodigo" readonly value="<%=obj.getCnpj()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Nome</label>
                        <input class="form-control" type="text" name="txtNome" required value="<%=obj.getNome() %>" />
                    </div>


                <button class="btn btn-primary btn-sm" type="submit">Salvar</button>
                
            </form>

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>