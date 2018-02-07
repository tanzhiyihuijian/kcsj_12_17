<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    
    <!--Bootstrap and Other Vendors-->
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="${serverPath}/static/vendors/owl.carousel/css/owl.carousel.css">    
    
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/lightbox/css/lightbox.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/flexslider/flexslider.css" media="screen" />
    
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
    
    <section id="slider" class="row">
        <div class="row sliderCont flexslider m0">
            <ul class="slides nav">
                <li>
                    <img src="${serverPath}/static/images/slider/1.png" alt="">
                    <div class="text_lines row m0">
                        <div class="container p0">
                            <h3>Modern sofa</h3>
                            <h2>By defatch furniturehouse</h2>
                            <a href="#"><h4>show more</h4></a>
                        </div>
                    </div> <!--Text Lines-->
                </li>
                <li>
                    <img src="${serverPath}/static/images/slider/2.png" alt="">
                    <div class="text_lines row m0">
                        <div class="container p0">
                            <h3>Modern sofa</h3>
                            <h2>By defatch furniturehouse</h2>
                            <a href="#"><h4>show more</h4></a>
                        </div>
                    </div> <!--Text Lines-->
                </li>
                <li>
                    <img src="${serverPath}/static/images/slider/3.png" alt="">
                    <div class="text_lines row m0">
                        <div class="container p0">
                            <h3>Modern sofa</h3>
                            <h2>By defatch furniturehouse</h2>
                            <a href="#"><h4>show more</h4></a>
                        </div>
                    </div> <!--Text Lines-->
                </li>
            </ul>
        </div>
    </section> <!--Slider-->
    
    <section id="shopFeatures" class="row">
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-3 coreFeature">
                    <div class="row m0 coreFeatureInner">
                        <div class="row m0 icon circle"><img src="${serverPath}/static/images/icons/shopping-bag.png" alt=""></div>
                        <h5>产品列表</h5>
                        <%--<p>我们提供最好质量的产品给你。我们一直都在这里。</p>--%>
                    </div>
                </div>
                <div class="col-sm-3 coreFeature">
                    <div class="row m0 coreFeatureInner">
                        <div class="row m0 icon circle"><img src="${serverPath}/static/images/icons/car2.png" alt=""></div>
                        <h5>送货上门</h5>
                        <%--<p>我们提供最好质量的产品给你。我们一直都在这里。</p>--%>
                    </div>
                </div>
                <div class="col-sm-3 coreFeature">
                    <div class="row m0 coreFeatureInner">
                        <div class="row m0 icon circle"><img src="${serverPath}/static/images/icons/cart2.png" alt=""></div>
                        <h5>轻松购物</h5>
                        <%--<p>我们提供最好质量的产品给你。我们一直都在这里。</p>--%>
                    </div>
                </div>
                <div class="col-sm-3 coreFeature">
                    <div class="row m0 coreFeatureInner">
                        <div class="row m0 icon circle"><img src="${serverPath}/static/images/icons/catalog.png" alt=""></div>
                        <h5>产品目录</h5>
                        <%--<p>我们提供最好质量的产品给你。我们一直都在这里。</p>--%>
                    </div>
                </div>
            </div>
        </div>
    </section> <!--Shop Core Feature-->
    
    <section id="homeBanners" class="row">
        <div class="container">
            <div class="row text-center">
                <a href="product.html">
                    <div class="col-sm-3 homeBanner">
                        <div class="row">
                            <img src="${serverPath}/static/images/banner/homeBanner1.png" alt="" class="bgImage">
                            <div class="row m0 bannerTextArea">
                                <div class="row m0 bannerTextAreaInner">
                                    <h4>新年特惠</h4>
                                    <h5>现在去商店</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 homeBanner">
                        <div class="row">
                            <img src="${serverPath}/static/images/banner/homeBanner2.png" alt="" class="bgImage">
                        </div>
                    </div>
                    <div class="col-sm-3 homeBanner">
                        <div class="row">
                            <img src="${serverPath}/static/images/banner/homeBanner3.png" alt="" class="bgImage">
                            <div class="row m0 bannerTextArea">
                                <div class="row m0 bannerTextAreaInner">
                                    <h4>新品</h4>
                                    <h5>现在购买</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </section> <!--Banner-->
    
    <section id="featureProducts" class="row contentRowPad">
        <div class="container">
            <div class="row sectionTitle">
                <h3>特色产品</h3>
                <h5>了解更多关于我们的最新收藏</h5>
            </div>
            <div class="row">
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/1.png" alt="">
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>125.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">多彩沙发</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/2.png" alt="">
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>125.00</div>
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
                            <img src="${serverPath}/static/images/product/3.png" alt="">
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>125.00</div>
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
                            <img src="${serverPath}/static/images/product/4.png" alt="">
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>125.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">床上用品</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <c:forEach var="product" items="${products}">
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${product.imageUrl}" style="width: 262px; height: 331px" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">${product.factory}</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>${product.price}</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">${product.name}</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section> <!--Feature Products 4 Collumn-->
    
    <section id="featureCategory" class="row contentRowPad">
        <div class="row m0 sectionTitle">
            <h3>我们的特色</h3>
            <h5>让购物更便利</h5>
        </div>
        <div class="owl-carousel featureCats row m0">
            <div class="item">
                <div class="row m0 imgHov">
                    <img src="${serverPath}/static/images/product/category/1.png" alt="">
                    <div class="row m0 hovArea">
                        <i class="fa fa-heart-o"></i><br><h4>11 件</h4><a href="product.html">shop now</a>
                    </div>
                </div>
                <a href="product.html"><h4>椅子 &amp; 沙发</h4></a>
            </div>
            <div class="item">
                <div class="row m0 imgHov">
                    <img src="${serverPath}/static/images/product/category/2.png" alt="">
                    <div class="row m0 hovArea">
                        <i class="fa fa-heart-o"></i><br><h4>21 件</h4><a href="product.html">shop now</a>
                    </div>
                </div>
                <a href="product.html"><h4>户外家具</h4></a>
            </div>
            <div class="item">
                <div class="row m0 imgHov">
                    <img src="${serverPath}/static/images/product/category/3.png" alt="">
                    <div class="row m0 hovArea">
                        <i class="fa fa-heart-o"></i><br><h4>30 件</h4><a href="product.html">shop now</a>
                    </div>
                </div>
                <a href="product.html"><h4>床 &amp; 办公家具</h4></a>
            </div>
            <div class="item">
                <div class="row m0 imgHov">
                    <img src="${serverPath}/static/images/product/category/4.png" alt="">
                    <div class="row m0 hovArea">
                        <i class="fa fa-heart-o"></i><br><h4>55 件</h4><a href="product.html">shop now</a>
                    </div>
                </div>
                <a href="product.html"><h4>dining table</h4></a>
            </div>
            <div class="item">
                <div class="row m0 imgHov">
                    <img src="${serverPath}/static/images/product/category/2.png" alt="">
                    <div class="row m0 hovArea">
                        <i class="fa fa-heart-o"></i><br><h4>21 件</h4><a href="product.html">shop now</a>
                    </div>
                </div>
                <a href="product.html"><h4>outside furnitures</h4></a>
            </div>
        </div>
    </section> <!--Feature Categories-->
    
    <section id="furnitureHouse" class="row contentRowPad">
        <div class="container">
            <div class="row sectionTitle">
                <h3>我们的家居屋</h3>
                <h5>购买我们最好的品牌</h5>
            </div>
            <div class="row">
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/5.png" alt="">
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
                        <div class="row m0 proName"><a href="single-product.html">多彩沙发</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/6.png" alt="">
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
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/7.png" alt="">
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
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/8.png" alt="">
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
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/9.png" alt="">
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
                        <div class="row m0 proName"><a href="single-product.html">室内装饰</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${serverPath}/static/images/product/10.png" alt="">
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
                        <div class="row m0 proName"><a href="single-product.html">餐具</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>



                <c:forEach var="product" items="${products}">
                <div class="col-sm-4 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${product.imageUrl}" style="width: 360px; height: 332px" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#"></a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>${product.price}</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">${product.name}</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
                        </div>
                    </div>
                </div>
                </c:forEach>


            </div>
        </div>
    </section> <!--Feature Products 4 Collumn-->
    
    <section id="brands" class="row contentRowPad">
        <div class="container">
            <div class="row sectionTitle">
                <h3>我们的品牌</h3>
                <h5>选择最好的和我们最喜欢的品牌</h5>
            </div>
            <div class="row brands">                
                <ul class="nav navbar-nav">
                    <li><a href="#"><img src="${serverPath}/static/images/brands/1.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/brands/2.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/brands/3.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/brands/4.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/brands/5.png" alt=""></a></li>
                </ul>
            </div>
        </div>
    </section>

<jsp:include page="footer.jsp" />
    


<!--jQuery, Bootstrap and other vendor JS-->

<!--jQuery-->
<script src="${serverPath}/static/js/jquery-2.1.3.min.js"></script>

<!--Google Maps-->
<!---<script src="${serverPath}/static/http://ditu.google.cn/maps/api/js"></script>--->

<!--Bootstrap JS-->
<script src="${serverPath}/static/js/bootstrap.min.js"></script>

<!--Nice Scroll-->
<script src="${serverPath}/static/vendors/nicescroll/jquery.nicescroll.js"></script>

<!--Flickr-->


<!--Lightshot-->
<script src="${serverPath}/static/vendors/lightbox/js/lightbox.min.js"></script>

<!--Counter Up-->
<script src="${serverPath}/static/vendors/waypoints/waypoints.min.js"></script>
<script src="${serverPath}/static/vendors/counterup/jquery.counterup.min.js"></script>

<!--Owl Carousel-->
<script src="${serverPath}/static/vendors/owl.carousel/js/owl.carousel.min.js"></script>

<!--Isotope-->
<script src="${serverPath}/static/vendors/isotope/isotope-custom.js"></script>

<!--FlexSlider-->
<script src="${serverPath}/static/vendors/flexslider/jquery.flexslider-min.js"></script>

<!--Strella JS-->
<script src="${serverPath}/static/js/furniture.js"></script>

<script src="${serverPath}/static/js/login.js"></script>

</body>

</html>
