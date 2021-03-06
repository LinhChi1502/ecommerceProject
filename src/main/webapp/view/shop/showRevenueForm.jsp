<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Shopee Ecommerce</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
    <style>
        .form-revenue {
            -webkit-box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.75);
            box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.75);
            border: lightgray 2px solid;
            width: 70%;
            margin: auto;
            padding-top: 50px;
            padding-left: 30px;
            padding-right: 30px;
            text-align: center;
            padding-bottom: 30px;
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .input-group {
            margin-bottom: 20px;
        }
    </style>

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

                <li><a href="/back-to-home-page"><i class="fa fa-user-o"></i> Logout</a></li>
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
                    <a href="/create-product?shopid=${shop.getShopID()}"><input type="submit"
                                                                                class="btn btn-primary btn-lg"
                                                                                style="background-color: red"
                                                                                value="CREATE NEW PRODUCT"></a>
                </div>
                <!-- /SEARCH BAR -->

                <!-- SEARCH BAR -->
                <div class="col-md-3">
                    <a href="/show-product-list?shopid=${shop.getShopID()}"><input type="submit"
                                                                                   class="btn btn-primary btn-lg"
                                                                                   style="background-color: red"
                                                                                   value="YOUR PRODUCT LIST"></a>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <a href="/show-revenue-form?shopid=${shop.getShopID()}"><input type="submit"
                                                                                   class="btn btn-primary btn-lg"
                                                                                   style="background-color: red"
                                                                                   value="REVENUE"></a>
                </div>
                <!-- /ACCOUNT -->
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

<c:choose>
    <c:when test="${shopPurchases.size() == 0}">
        <div><span style="font-size: x-large; color: red; margin-left: 300px;font-weight: bold;">YOUR SHOP HAS NO REVENUE</span></div>
    </c:when>

    <c:when test="${shopPurchases.size() > 0}">
        <div class="container">
            <div class="row"></div>
            <form action="/show-revenue-form?shopid=${shop.getShopID()}" class="form-revenue" method="post">

                <h2 class="mb-3">Revenue Form</h2>

                <div class="input-group mb-3">
                    <span class="input-group-addon">From</span>
                    <input type="date" class="form-control" placeholder="Start Date" aria-describedby="basic-addon1" name="startDate">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-addon">To</span>
                    <input type="date" class="form-control" placeholder="End Date" aria-describedby="basic-addon1" name="endDate">
                </div>


                <input type="submit" class="btn btn-default" value="SHOW">
            </form>
        </div>
    </c:when>
</c:choose>


<%--<c:if test="${shopPurchases.size() == 0}">--%>
<%--    <div><span style="font-size: x-large; color: red; margin-left: 300px;font-weight: bold;">YOUR SHOP HAS NO REVENUE</span></div>--%>
<%--</c:if>--%>

<%--<c:if test="${shopPurchases.size() > 0}">--%>
<%--    &lt;%&ndash;hien thi form revenue bat dau&ndash;%&gt;--%>
<%--    <div class="container">--%>
<%--        <div class="row"></div>--%>
<%--        <form action="/show-revenue-form?shopid=${shop.getShopID()}" class="form-revenue" method="post">--%>

<%--            <h2 class="mb-3">Revenue Form</h2>--%>

<%--            <div class="input-group mb-3">--%>
<%--                <span class="input-group-addon">From</span>--%>
<%--                <input type="date" class="form-control" placeholder="Start Date" aria-describedby="basic-addon1" name="startDate">--%>
<%--            </div>--%>
<%--            <div class="input-group mb-3">--%>
<%--                <span class="input-group-addon">To</span>--%>
<%--                <input type="date" class="form-control" placeholder="End Date" aria-describedby="basic-addon1" name="endDate">--%>
<%--            </div>--%>


<%--            <input type="submit" class="btn btn-default" value="SHOW">--%>
<%--        </form>--%>
<%--    </div>--%>

<%--    &lt;%&ndash;hien thi form revenue ket thuc&ndash;%&gt;--%>
<%--</c:if>--%>



<%--hien thi form revenue bat dau--%>
<div class="container">
    <div class="row"></div>
    <form action="/show-revenue-form?shopid=${shop.getShopID()}" class="form-revenue" method="post">

        <h2 class="mb-3">Revenue Form</h2>

        <div class="input-group mb-3">
            <span class="input-group-addon">From</span>
            <input type="date" class="form-control" placeholder="Start Date" aria-describedby="basic-addon1" name="startDate">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-addon">To</span>
            <input type="date" class="form-control" placeholder="End Date" aria-describedby="basic-addon1" name="endDate">
        </div>


        <input type="submit" class="btn btn-default" value="SHOW">
    </form>
</div>

<%--hien thi form revenue ket thuc--%>


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
