<%
    if (session.getAttribute("cliente") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@include file="cabecalho.jsp"%>

<aside id="colorlib-hero" class="breadcrumbs">
    <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url(images/cover-img-1.jpg);">
                <div class="overlay"></div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                            <div class="slider-text-inner text-center">
                                <h1>Checkout</h1>
                                <h2 class="bread"><span><a href="index.html">Home</a></span> <span><a href="cart.html">Shopping Cart</a></span> <span>Checkout</span></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</aside>

<div class="colorlib-shop">
    <div class="container">
        <div class="row row-pb-md">
            <div class="col-md-10 col-md-offset-1">
                <div class="process-wrap">
                    <div class="process text-center active">
                        <p><span>01</span></p>
                        <h3>Shopping Cart</h3>
                    </div>
                    <div class="process text-center active">
                        <p><span>02</span></p>
                        <h3>Checkout</h3>
                    </div>
                    <div class="process text-center">
                        <p><span>03</span></p>
                        <h3>Order Complete</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <form method="post" class="colorlib-form">
                    <h2>Dados da Compra</h2>
                    <div class="row">

                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="fname">Nome do comprador</label>
                                xxxxxx
                             </div>
                            <div class="col-md-6">
                                <label for="lname">Endereço de entrega:</label>
                                xxxxxxx
                              </div>
                        </div>
                        
                
            </div>
                    
            <div class="col-md-12">
                <div class="cart-detail">
                    <h2>Carrinho</h2>
                    <ul>
                        <li>
                               <ul>
                                <li><span>1 x Product Name</span> <span>$99.00</span></li>
                                <li><span>1 x Product Name</span> <span>$78.00</span></li>
                            </ul>
                        </li>
                          <li><span> Total</span> <span>$180.00</span></li>
                    </ul>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p><a href="final.jsp" class="btn btn-primary">Fechar compra</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="colorlib-shop">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                <h2><span>Recommended Products</span></h2>
                <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url(images/item-5.jpg);">
                        <p class="tag"><span class="new">New</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">Floral Dress</a></h3>
                        <p class="price"><span>$300.00</span></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url(images/item-6.jpg);">
                        <p class="tag"><span class="new">New</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">Floral Dress</a></h3>
                        <p class="price"><span>$300.00</span></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url(images/item-7.jpg);">
                        <p class="tag"><span class="new">New</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">Floral Dress</a></h3>
                        <p class="price"><span>$300.00</span></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url(images/item-8.jpg);">
                        <p class="tag"><span class="new">New</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">Floral Dress</a></h3>
                        <p class="price"><span>$300.00</span></p>
                    </div>
                </div>
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