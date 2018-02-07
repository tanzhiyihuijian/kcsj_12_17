<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>单件产品</title>
    
    <!--Bootstrap and Other Vendors-->
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${serverPath}/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="${serverPath}/static/vendors/owl.carousel/css/owl.carousel.css">
    <link rel="stylesheet" href="${serverPath}/static/vendors/bootstrap-select/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/lightbox/css/lightbox.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/flexslider/flexslider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${serverPath}/static/vendors/bootstrap-rating/bootstrap-rating.css" media="screen" />
    
    <!--Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800|Montserrat:400,700' rel='stylesheet' type='text/css'>
    
    <!--Mechanic Styles-->
    <link rel="stylesheet" href="${serverPath}/static/css/style.css">
    <link rel="stylesheet" href="${serverPath}/static/css/responsive.css">
    
    <!--[if lt IE 9]>
      <script src="${serverPath}/static/js/html5shiv.min.js"></script>
      <script src="${serverPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<jsp:include page="header.jsp" />
    
    <section id="breadcrumbRow" class="row">
        <h2>单件产品</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">单件产品</h4>
                <ul class="breadcrumb fright">
                    <li><a href="index.html">首页</a></li>
                    <li class="active">单件产品</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad">
        <div class="container">
            <div class="row singleProduct">
                <div class="col-sm-7">
                    <div class="row m0 flexslider" id="productImageSlider">
                        <ul class="slides">
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                            <li><img src="${serverPath}/static/images/product/single/1.png" alt=""></li>
                        </ul>
                    </div>
                    <div class="row m0 flexslider" id="productImageSliderNav">
                        <ul class="slides">
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l1.png" alt=""></li>
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l2.png" alt=""></li>
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l3.png" alt=""></li>
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l4.png" alt=""></li>
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l5.png" alt=""></li>
                            <li><img class="img-thumbnail" src="${serverPath}/static/images/product/single/l3.png" alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="row m0">
                        <h4 class="heading">舒适的餐桌</h4>
                        <h3 class="heading price"><del>$580</del>$420</h3>
                        <div class="row m0 starsRow">
                            <div class="stars fleft">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-empty"></i>
                            </div>
                            <div class="fleft">
                                5 评论(s) <span>|</span> <a href="#">添加您的评论</a>
                            </div>
                        </div>
                        <div class="row descList m0">
                            <dl class="dl-horizontal">
                                <dt>制造商：</dt>
                                <dd>Tartaan & Co</dd>
                                <dt>可用性 ：</dt>
                                <dd>有库存20件产品</dd>
                                <dt>产品编号 ：</dt>
                                <dd>Xuo15</dd>
                            </dl>
                        </div>
                        <div class="row m0 shortDesc">
                            <p class="m0">质朴，自然，通常由树皮覆盖的原木或简单的木板制成。在国内寻找旧货店（为真实性），或购买手工制作的新版本。</p>
                        </div>
                        <div class="row m0 colorSelect">
                            <h5 class="heading proAttr">Color :</h5>
                            <input type="radio" id="cl1" name="proColor" checked>
                            <label for="cl1"><span></span></label>
                            <input type="radio" id="cl2" name="proColor">
                            <label for="cl2"><span></span></label>
                            <input type="radio" id="cl3" name="proColor">
                            <label for="cl3"><span></span></label>
                            <input type="radio" id="cl4" name="proColor">
                            <label for="cl4"><span></span></label>
                            <input type="radio" id="cl5" name="proColor">
                            <label for="cl5"><span></span></label>
                            <input type="radio" id="cl6" name="proColor">
                            <label for="cl6"><span></span></label>
                        </div>
                        <div class="row m0">
                            <h5 class="heading proAttr">Size :</h5>
                            <select class="selectpicker sizeSelect">
                                <option value="queen">女王</option>
                                <option value="red">红色</option>
                                <option value="black">白色</option>
                                <option value="white">黑色</option>
                            </select>
                        </div>
                        <div class="row m0">
                            <ul class="list-inline wce">
                                <li><a href="#"><img src="${serverPath}/static/images/icons/heart.png" alt="">添加到心愿单</a></li>
                                <li><a href="#"><img src="${serverPath}/static/images/icons/compare.png" alt="">加入对比</a></li>
                                <li><a href="#"><img src="${serverPath}/static/images/icons/email.png" alt="">发邮件给朋友</a></li>
                            </ul>
                        </div>
                        <div class="row m0 qtyAtc">
                            <div class="fleft quantity">
                                <div class="fleft">Qty <span>=</span></div>
                                <div class="input-group spinner">
                                    <input type="text" class="form-control" value="2">
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default"><i class="fa fa-angle-up"></i></button>
                                        <button class="btn btn-default"><i class="fa fa-angle-down"></i></button>
                                    </div>
                                </div>
                            </div>
                            <button class="fleft btn btn-default"><img src="${serverPath}/static/images/icons/cart3.png" alt="">加入到购物车</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row m0 tabRow">
                <ul class="nav nav-tabs" role="tablist" id="shortcodeTab">
                    <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">
                        <i class="fa fa-align-left"></i> 描述
                    </a></li>
                    <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">
                        <i class="fa fa-thumbs-up"></i> 评论 (1)
                    </a></li>
                    <li role="presentation"><a href="#additionInfo" aria-controls="additionInfo" role="tab" data-toggle="tab">
                        <i class="fa fa-file-text"></i> 附加信息
                    </a></li>
                </ul>
                <div class="tab-content shortcodeTabContent">
                    <div role="tabpanel" class="tab-pane row m0 active" id="description">
                        <div class="fleft img"><img src="${serverPath}/static/images/product/tab-desc.png" alt=""></div>
                        <div class="fleft desc">
                            <h5 class="heading">产品详情</h5>
                            <p>用餐家具的外观设计朴实无华，采用天然材料制成，几乎没有转弯，没有任何装饰。没有装饰; 高度重视功能。家具外观设计简洁明快，几乎没有瑕疵，没有饰物，只有天然材质; 没有装饰; 强调功能。</p>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane row m0" id="review">
                        <div class="row m0 reviewCount">1 review for comfortable dining table</div>
                        <div class="row m0 reviewBody">
                            <span class="bold">4</span> out of 5 <br>
                            <span class="bold">K Admas</span> - March 10, 2014
                            <p class="m0">Amazing Product!</p>
                        </div>
                        <div class="row m0 reviewAdd">
                            <h4 class="heading">Add a review</h4>
                            <form action="#" role="form" method="post" class="row m0 reviewForm">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="Your Name *" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" class="form-control" placeholder="Your Email *" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="url" class="form-control" placeholder="Your Website">
                                    </div>
                                    <div class="col-sm-6 ratingStars">
                                        Your Rating <input type="hidden" class="rating" data-fractions="2">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4 class="heading">Your Review</h4>
                                        <textarea name="reviewText" id="reviewText" class="form-control reviewText"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="submit" class="btn btn-primary filled">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane row m0" id="additionInfo">
                        <div class="row m0 additionInfoRow">
                            <div class="fleft infoTitle">Color</div>
                            <div class="fleft infos">Blue, Black, Red, Yellow</div>
                        </div>
                        <div class="row m0 additionInfoRow">
                            <div class="fleft infoTitle">Size</div>
                            <div class="fleft infos">S, M, L, XL</div>
                        </div>
                    </div>
                </div>
            </div> <!--Tabs Row-->
            <div class="row shortcodesRow m0">
                <div class="row sectionTitle">
                    <h3>最新产品</h3>
                    <h5>了解更多关于我们最新的收藏</h5>
                </div>
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">餐桌</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">加入购物车</button>
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
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
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">床上用品</a></div>
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

<!--Bootstrap Select-->
<script src="${serverPath}/static/vendors/bootstrap-select/js/bootstrap-select.min.js"></script>

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
