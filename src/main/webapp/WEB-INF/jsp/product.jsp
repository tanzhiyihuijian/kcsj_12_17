<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我们的产品</title>
    
    <!--Bootstrap and Other Vendors-->
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="${serverPath}/static/vendors/owl.carousel/css/owl.carousel.css">
    
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/lightbox/css/lightbox.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/flexslider/flexslider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/bootstrap-rating/bootstrap-rating.css" media="screen" />
    
    <!--Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800|Montserrat:400,700' rel='stylesheet' type='text/css'>
    
    <!--Mechanic Styles-->
    <link rel="stylesheet" href="${serverPath}/static/css/style.css">
    <link rel="stylesheet" href="${serverPath}/static/css/responsive.css">
    
    <!--[if lt IE 9]>
      <script src="${serverPath}/static/${serverPath}/static/js/html5shiv.min.js"></script>
      <script src="${serverPath}/static/${serverPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<jsp:include page="header.jsp" />

    <section id="breadcrumbRow" class="row">
        <h2>我们的产品</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">我们的产品</h4>
                <ul class="breadcrumb fright">
                    <li><a href="index.html">首页</a></li>
                    <li class="active">产品</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/1.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">多彩的沙发</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/2.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>830.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">餐桌</a></div>
                        <div class="row m0 proBuyBtn">
                            <a class="addToCart btn" href="#">加入购物车</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/3.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>525.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">沙发套装</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/4.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>1025.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">床上用品</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/5.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>725.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">办公用品</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/6.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>825.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">会议桌</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div><div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/7.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">茶几</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/8.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>830.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">沙发套装</a></div>
                        <div class="row m0 proBuyBtn">
                            <a class="addToCart btn" href="#">加入购物车</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/9.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>525.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">沙发套装</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/10.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>1025.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">室外沙发</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/11.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>725.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">品质沙发</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/pro1p/12.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>825.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">户外桌子</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<jsp:include page="footer.jsp" />
    
    

<!--jQuery, Bootstrap and other vendor JS-->

<!--jQuery-->
<script src="${serverPath}/static/js/jquery-2.1.3.min.js"></script>

<!--Google Maps-->
<script src="${serverPath}/static/http://ditu.google.cn/maps/api/js"></script>

<!--Bootstrap JS-->
<script src="${serverPath}/static/js/bootstrap.min.js"></script>

<!--Nice Scroll-->
<script src="${serverPath}/static/vendors/nicescroll/jquery.nicescroll.js"></script>

<!--Flickr-->


<!--Lightshot-->
<script src="${serverPath}/static/vendors/lightbox/js/lightbox.min.js"></script>

<!--Tweets-->
<script src="${serverPath}/static/vendors/tweet/scripts.js"></script>
<script src="${serverPath}/static/vendors/tweet/tweetie.min.js"></script>

<!--Counter Up-->
<script src="${serverPath}/static/vendors/waypoints/waypoints.min.js"></script>
<script src="${serverPath}/static/vendors/counterup/jquery.counterup.min.js"></script>

<!--Owl Carousel-->
<script src="${serverPath}/static/vendors/owl.carousel/js/owl.carousel.min.js"></script>

<!--Isotope-->
<script src="${serverPath}/static/vendors/isotope/isotope-custom.js"></script>

<!--Rating-->
<script src="${serverPath}/static/vendors/bootstrap-rating/bootstrap-rating.min.js"></script>

<!--FlexSlider-->
<script src="${serverPath}/static/vendors/flexslider/jquery.flexslider-min.js"></script>

<!--Strella JS-->
<script src="${serverPath}/static/js/furniture.js"></script>
<script src="${serverPath}/static/js/login.js"></script>

</body>
</html>
