<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Electro - HTML Ecommerce Template</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> +012-34-56-78</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> shopee@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> 2 Ham Nghi Road</a></li>
            </ul>
            <ul class="header-links pull-right">

                <li><a href="logincontroller"><i class="fa fa-user-o"></i> Login</a></li>
                <li><a href="????????????????"><i class="fa fa-user-o"></i>Register</a></li>
            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-2">
                    <div class="header-logo">
                        <a href="/back-to-home-page" class="logo">
                            <img src="img/shopee.jpg" alt="" width="100px">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-4">
                    <div class="header-search">
                        <form action="/search-products-by-name-homepage">
                            <input class="input" placeholder="Search by name" name="productName">
                            <button type="submit" class="search-btn">Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- SEARCH BAR -->
                <div class="col-md-3">
                    <div class="header-search">
                        <form action="/search-products-by-price-homepage">
                            <select style="width: 100px; height: 40px" name="range">
                                <option value="0,50"><$50</option>
                                <option value="50,500"><$50-$500</option>
                                <option value="500,10000">>$500</option>
                            </select>
                            <button class="search-btn">Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

<%--                <!-- ACCOUNT -->--%>
<%--                <div class="col-md-3 clearfix">--%>
<%--                    <div class="header-ctn">--%>
<%--                        <!-- Cart -->--%>
<%--                        &lt;%&ndash;                        <div class="dropdown">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">&ndash;%&gt;--%>
<%--                        <i class="fa fa-shopping-cart" style="color: red"></i>--%>
<%--                        <a href="phai lam dien link history"><span style="color: red">Your purchase history</span></a>--%>
<%--                        &lt;%&ndash;                            </a>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            <div class="cart-dropdown">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <div class="cart-list">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    <div class="product-widget">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <div class="product-img">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <img src="img/product01.png" alt="">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <div class="product-body">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <button class="delete"><i class="fa fa-close"></i></button>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    </div>&ndash;%&gt;--%>

<%--                        &lt;%&ndash;                                    <div class="product-widget">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <div class="product-img">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <img src="img/product02.png" alt="">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <div class="product-body">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                            <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                        <button class="delete"><i class="fa fa-close"></i></button>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <div class="cart-summary">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    <small>3 Item(s) selected</small>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    <h5>SUBTOTAL: $2940.00</h5>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <div class="cart-btns">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    <a href="#">View Cart</a>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    <a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--                        <!-- /Cart -->--%>

<%--                        <!-- Menu Toogle -->--%>
<%--                        &lt;%&ndash;                        <div class="menu-toggle">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            <a href="#">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <i class="fa fa-bars"></i>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <span>Menu</span>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            </a>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--                        <!-- /Menu Toogle -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- /ACCOUNT -->--%>
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->

<%--&lt;%&ndash;<!-- SECTION -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="section">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <!-- container -->&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="container">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <!-- row -->&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <!-- shop -->&ndash;%&gt;--%>
<%--&lt;%&ndash;            <div class="col-md-4 col-xs-6">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="shop">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="shop-img">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <img src="thay anh vao day" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <!-- /shop -->&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <!-- /row -->&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <!-- /container -->&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!-- /SECTION -->&ndash;%&gt;--%>

<!-- SECTION -->
<%--<div class="section">--%>
<!-- container -->
<div class="container">
    <div class="row">
        <c:forEach items="${products}" var="product">
            <div class="col-md-3" style="margin-bottom: 50px">
                <div class="product-item">
                    <div class="product-title" style="text-transform: uppercase; font-weight: bold; font-size: large">
                        <a href="/show-product-details-homepage?productid=${product.getProductID()}">${product.getProductName()}</a>
                    </div>
                    <div class="product-image">
                        <a href="/show-product-details-homepage?productid=${product.getProductID()}">
                            <img style="width: 100px; height: 100px" src="${product.getProductImage()}" alt="Product Image">
                        </a>
                    </div>
                    <div class="product-price">
                        <h3><span>$</span>${product.getProductPrice()}</h3>
                        <a class="btn" href="logincontroller"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!-- /container -->
<%--</div>--%>
<!-- /SECTION -->

<!-- /product -->

<%--                                <!-- product -->--%>
<%--                                <div class="product">--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="img/product02.png" alt="">--%>
<%--                                        <div class="product-label">--%>
<%--                                            <span class="new">NEW</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-body">--%>
<%--                                        <p class="product-category">Category</p>--%>
<%--                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                        <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                        <div class="product-rating">--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star-o"></i>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-btns">--%>
<%--                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="add-to-cart">--%>
<%--                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <!-- /product -->--%>

<%--                                <!-- product -->--%>
<%--                                <div class="product">--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="img/product03.png" alt="">--%>
<%--                                        <div class="product-label">--%>
<%--                                            <span class="sale">-30%</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-body">--%>
<%--                                        <p class="product-category">Category</p>--%>
<%--                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                        <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                        <div class="product-rating">--%>
<%--                                        </div>--%>
<%--                                        <div class="product-btns">--%>
<%--                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="add-to-cart">--%>
<%--                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <!-- /product -->--%>

<%--                                <!-- product -->--%>
<%--                                <div class="product">--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="img/product04.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product-body">--%>
<%--                                        <p class="product-category">Category</p>--%>
<%--                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                        <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                        <div class="product-rating">--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-btns">--%>
<%--                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="add-to-cart">--%>
<%--                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <!-- /product -->--%>

<%--                                <!-- product -->--%>
<%--                                <div class="product">--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="img/product04.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product-body">--%>
<%--                                        <p class="product-category">Category</p>--%>
<%--                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                        <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                        <div class="product-rating">--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-btns">--%>
<%--                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="add-to-cart">--%>
<%--                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <!-- /product -->--%>

<%--                                <!-- product -->--%>
<%--                                <div class="product">--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="img/product05.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product-body">--%>
<%--                                        <p class="product-category">Category</p>--%>
<%--                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                        <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                        <div class="product-rating">--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                            <i class="fa fa-star"></i>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-btns">--%>
<%--                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="add-to-cart">--%>
<%--                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <!-- /product -->--%>


<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title">Top selling</h3>
                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">
                    <div class="products-tabs">
                        <!-- tab -->
                        <div id="tab2" class="tab-pane fade in active">
                            <div class="products-slick" data-nav="#slick-nav-2">
                                <!-- product -->
                                <!-- product -->
                                <c:forEach items="${products}" var="product">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="${product.getProductImage()}" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a
                                                    href="thay duong link chi tiêt sp">${product.getProductName()}</a></h3>
                                            <h4 class="product-price">${product.getProductPrice()}</h4>
                                        </div>
                                        <a href="logincontroller">
                                        <div class="add-to-cart">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>BUY NOW
                                            </button>
                                        </div>
                                        </a>
                                    </div>
                                </c:forEach>
                                <!-- /product -->








                            </div>
                            <div id="slick-nav-2" class="products-slick-nav"></div>
                        </div>
                        <!-- /tab -->
                    </div>
                </div>
            </div>
            <!-- /Products tab & slick -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<%--<!-- SECTION -->--%>
<%--<div class="section">--%>
<%--    <!-- container -->--%>
<%--    <div class="container">--%>
<%--        <!-- row -->--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-4 col-xs-6">--%>
<%--                <div class="section-title">--%>
<%--                    <h4 class="title">Top selling</h4>--%>
<%--                    <div class="section-nav">--%>
<%--                        <div id="slick-nav-3" class="products-slick-nav"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="products-widget-slick" data-nav="#slick-nav-3">--%>
<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product07.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product08.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product09.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product01.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product02.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product03.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4 col-xs-6">--%>
<%--                <div class="section-title">--%>
<%--                    <h4 class="title">Top selling</h4>--%>
<%--                    <div class="section-nav">--%>
<%--                        <div id="slick-nav-4" class="products-slick-nav"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="products-widget-slick" data-nav="#slick-nav-4">--%>
<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product04.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product05.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product06.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product07.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product08.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product09.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="clearfix visible-sm visible-xs"></div>--%>

<%--            <div class="col-md-4 col-xs-6">--%>
<%--                <div class="section-title">--%>
<%--                    <h4 class="title">Top selling</h4>--%>
<%--                    <div class="section-nav">--%>
<%--                        <div id="slick-nav-5" class="products-slick-nav"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="products-widget-slick" data-nav="#slick-nav-5">--%>
<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product01.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product02.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product03.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product04.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product05.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /product widget -->--%>

<%--                        <!-- product widget -->--%>
<%--                        <div class="product-widget">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="img/product06.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- product widget -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--        <!-- /row -->--%>
<%--    </div>--%>
<%--    <!-- /container -->--%>
<%--</div>--%>
<%--<!-- /SECTION -->--%>

<%--<!-- NEWSLETTER -->--%>
<%--<div id="newsletter" class="section">--%>
<%--    <!-- container -->--%>
<%--    <div class="container">--%>
<%--        <!-- row -->--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12">--%>
<%--                <div class="newsletter">--%>
<%--                    <p>Sign Up for the <strong>NEWSLETTER</strong></p>--%>
<%--                    <form>--%>
<%--                        <input class="input" type="email" placeholder="Enter Your Email">--%>
<%--                        <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>--%>
<%--                    </form>--%>
<%--                    <ul class="newsletter-follow">--%>
<%--                        <li>--%>
<%--                            <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="#"><i class="fa fa-instagram"></i></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="#"><i class="fa fa-pinterest"></i></a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- /row -->--%>
<%--    </div>--%>
<%--    <!-- /container -->--%>
<%--</div>--%>
<%--<!-- /NEWSLETTER -->--%>

<!-- FOOTER -->
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">About Us</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt
                            ut.</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Categories</h3>
                        <ul class="footer-links">
                            <li><a href="#">Hot deals</a></li>
                            <li><a href="#">Laptops</a></li>
                            <li><a href="#">Smartphones</a></li>
                            <li><a href="#">Cameras</a></li>
                            <li><a href="#">Accessories</a></li>
                        </ul>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Information</h3>
                        <ul class="footer-links">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Orders and Returns</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Service</h3>
                        <ul class="footer-links">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">View Cart</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Track My Order</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">
								 <a target="_blank" href="https://www.templateshub.net">Templates Hub</a>
							</span>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>
