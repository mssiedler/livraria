<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%
    //se os dois campos forem informados, é login
    if (request.getParameter("txtEmail") != null
            && request.getParameter("txtSenha") != null) {
        ClienteDAO dao = new ClienteDAO();
        Cliente cli = dao.logar(request.getParameter("txtEmail"),
                request.getParameter("txtSenha"));
        if (cli != null) {
            session.setAttribute("cliente", cli);
            response.sendRedirect("checkout.jsp");
            return;
        } else {
%>
<script>alert('login e/ou senha inválidos');
</script>    
<%}

    }
    //Se preencheu o cadastro
    if (request.getParameter("txtNEmail") != null
            && request.getParameter("txtNSenha") != null
            && request.getParameter("txtNEnd") != null
            && request.getParameter("txtNNome") != null) {
        ClienteDAO dao = new ClienteDAO();
        Cliente cli = new Cliente();
        cli.setEmail(request.getParameter("txtNEmail"));
        cli.setEndereco(request.getParameter("txtNEnd"));
        cli.setSenha(request.getParameter("txtNSenha"));
        cli.setNome(request.getParameter("txtNNome"));
        dao.incluir(cli);

        session.setAttribute("cliente", cli);
        response.sendRedirect("checkout.jsp");
        return;

    }

%>

<%@include file="cabecalho.jsp"%>


<div class="colorlib-shop">
    <div class="container">

        <div class="row">
            <div class="col-md-6">
                <form method="post" action="#" class="colorlib-form">
                    <h2>Login</h2>
                    <div class="row">

                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="fname">email</label>
                                <input type="email" id="fname" name="txtEmail" class="form-control" placeholder="Digite seu email">
                            </div>
                            <div class="col-md-6">
                                <label for="lname">Senha</label>
                                <input type="text" id="lname" name="txtSenha" class="form-control" placeholder="Digite sua senha">
                            </div>
                            <div class="col-md-6">
                                <br/>
                                <input type="submit" value="Entrar" class="btn btn-primary">

                            </div>
                        </div>

                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <form method="post" class="colorlib-form">
                    <h2>Novo Cadastro</h2>
                    <div class="row">

                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="fname">email</label>
                                <input type="email" id="fname" name="txtNEmail" class="form-control" placeholder="Digite seu email">
                            </div>
                            <div class="col-md-6">
                                <label for="lname">Senha</label>
                                <input type="password" id="lname" name="txtNSenha" class="form-control" placeholder="Digite sua senha">
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="lnome">Nome</label>
                                <input type="text" id="lnome" name="txtNNome" class="form-control" placeholder="Digite sua senha">
                            </div>
                            <div class="col-md-6">
                                <label for="fend">Endereço</label>
                                <input type="text" id="fend" name="txtNEnd" class="form-control" placeholder="Digite seu email">
                            </div>
                            <div class="col-md-6">
                                <br/>
                                <input type="submit" value="Cadastrar" class="btn btn-primary">

                            </div>

                        </div>

                    </div>
                </form>
            </div>

        </div>
    </div>
</div>




<div id="colorlib-subscribe">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="col-md-6 text-center">
                    <h2><i class="icon-paperplane"></i>Sign Up for a Newsletter</h2>
                </div>
                <div class="col-md-6">
                    <form class="form-inline qbstp-header-subscribe">
                        <div class="row">
                            <div class="col-md-12 col-md-offset-0">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="email" placeholder="Enter your email">
                                    <button type="submit" class="btn btn-primary">Subscribe</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="rodape.jsp"%>