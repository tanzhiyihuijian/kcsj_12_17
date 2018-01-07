<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>加入我们</title>
    
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
      <script src="${serverPath}/static/js/html5shiv.min.js"></script>
      <script src="${serverPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <header class="row" id="header">
        <div class="row m0 top_menus">
            <div class="container">
                <div class="row">
                    <ul class="nav nav-pills fleft">
                        <li><a href="index.html">首页</a></li>
                        <li><a href="about.html">关于</a></li>
                        <li><a href="contact.html">加入我们</a></li>
                        <li><a href="product.html">产品</a></li>
                        <li><a id="single-product" href="single-product.html">单件产品</a></li>
                        <li id="login-elem"></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row m0 logo_line">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 logo">
                        <a href="index.html" class="logo_a"><img src="${serverPath}/static/images/logo.png" alt="Furniture House"></a>
                    </div>
                    <div class="col-sm-7 searchSec">
                        <div class="fleft searchForm">
                            <form action="#" method="get">
                                <div class="input-group">
                                    <input type="hidden" name="search_param" value="all" id="search_param">
                                    <input type="search" class="form-control" placeholder="搜索商品">
                                    <div class="input-group-btn searchFilters">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            <span id="searchFilterValue">全部分类</span> <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            <li><a href="#all">全部分类</a></li>
                                            <li><a href="#chairs">椅子</a></li>
                                            <li><a href="#tables">茶几</a></li>
                                            <li><a href="#dressers">梳妆台</a></li>
                                            <li><a href="#desk">书桌</a></li>
                                            <li><a href="#beds">床</a></li>
                                            <li><a href="#benches">凳子</a></li>
                                        </ul>
                                    </div><!-- /btn-group -->
                                    <span class="input-group-btn searchIco">
                                            <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                        </span>
                                </div><!-- /input-group -->
                            </form>
                        </div>
                        <div class="fleft wishlistCompare">
                            <ul class="nav">
                                <li><a href="#"><i class="fa fa-heart"></i> 心愿单 (3)</a></li>
                                <li><a href="#"><i class="fa fa-exchange"></i> 对比 (2)</a></li>
                            </ul>
                        </div>
                        <div class="fleft cartCount">
                            <div class="cartCountInner row m0">
                                <span class="badge">2</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default m0 navbar-static-top">
            <div class="container-fluid container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                        <i class="fa fa-bars"></i> Navigation
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="mainNav">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">首页</a></li>
                        <li><a href="about.html">关于</a></li>
                        <li><a href="contact.html">加入我们</a></li>
                        <li><a href="product.html">产品</a></li>
                        <li><a href="single-product.html">单件产品</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="row topFeatures m0">
            <div class="container">
                <ul class="nav nav-justified text-center">
                    <li><img src="${serverPath}/static/images/icons/returns.png" alt="">30天无忧退换</li>
                    <li><img src="${serverPath}/static/images/icons/delivery-car.png" alt="">急速快递</li>
                    <li><img src="${serverPath}/static/images/icons/tel24-7.png" alt="">7*24 售后服务</li>
                </ul>
            </div>
        </div>
    </header> <!--Header-->
    
    <section id="breadcrumbRow" class="row">
        <h2>加入我们</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">加入我们</h4>
                <ul class="breadcrumb fright">
                    <li><a href="index.html">首页</a></li>
                    <li class="active">加入我们</li>
                </ul>
            </div>
        </div>
    </section>

    <%--
    <section id="googleMapRow" class="row">
        <div class="row m0" id="mapBox"></div>
    </section>--%>
    
    <section id="contactRow" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">联系我们</h4>
                    </div>
                    <div class="row m0 contactForm">
                        <form class="row m0" id="contactForm" method="post" name="contact" action="contact_process.php">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="name">姓名 *</label>
                                    <input type="text" class="form-control" name="name" id="name">
                                </div>
                                <div class="col-sm-6">
                                    <label for="email">邮箱 *</label>
                                    <input type="email" class="form-control" name="email" id="email">
                                </div>
                            </div>
                            <div class="row m0">
                                <label for="subject">学科 *</label>
                                <input type="text" class="form-control" name="subject" id="subject">
                            </div>
                            <div class="row m0">
                                <label for="message">您的信息</label>
                                <textarea name="message" id="message" class="form-control"></textarea>
                            </div>
                            <div class="row m0 captchaRow">
                                <img src="${serverPath}/static/images/captcha.png" alt=""><br>
                                <label for="captcha">输入上面的文字</label>
                                <input type="text" class="form-control" name="captcha" id="captcha">
                            </div>
                            <button class="btn btn-primary btn-lg filled" type="submit">发送</button>
                        </form>
                        <div id="success">
                                <span class="green textcenter">
                                    您的信息发送成功, 我们不久就会收到您的来信
                                </span>
                        </div>
                        <div id="error">
                            <span>
                                发生了一些错误,请尝试刷新网页, 重新发送
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">联络信息</h4>
                    </div>
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">在哪里找到我们</h5>
                            <p>您可以通过以下地址联系我们：</p>
                            <h5>安徽 淮南 安徽理工大学 经济与管理学院</h5>
                        </div> 
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">发邮件给我们</h5>
                            <p>通过电子邮件发送您的问题和建议以下电子邮件地址：</p>
                            <h5>info@aust.edu</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">需要打电话给我们？</h5>
                            <p>星期一至星期五上午10：00-晚上8:00，请致电：</p>
                            <h5>1000-1234-5678</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fa fa-question"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">我们有很好的支持</h5>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。我们为您提供最好的产品质量。</p>
                        </div>
                    </div> <!--contactInfo-->
                </div>
            </div>
        </div>
    </section>

    <footer class="row">
        <div class="row m0 topFooter">
            <div class="container line1">
                <div class="row footFeatures">
                    <div class="col-sm-4 footFeature">
                        <div class="media">
                            <div class="media-left icon"><img src="${serverPath}/static/images/icons/car3.png" alt=""></div>
                            <div class="media-body texts">
                                <h4>全球</h4>
                                <h2>免运费</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 footFeature">
                        <div class="media m0">
                            <div class="media-left icon"><img src="${serverPath}/static/images/icons/tel24-7_2.png" alt=""></div>
                            <div class="media-body texts">
                                <h4>24小时服务热线</h4>
                                <h2>123 456 789</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 footFeature">
                        <div class="media m0">
                            <div class="media-left icon"><img src="${serverPath}/static/images/icons/shopping-bag2.png" alt=""></div>
                            <div class="media-body texts">
                                <h4>查看我们的</h4>
                                <h2>最新优惠</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container line2">
                <div class="row">
                    <div class="col-sm-3 widget">
                        <div class="row m0">
                            <h4>关于家居屋</h4>
                            <p>我们提供最好质量的产品给你。我们一直都在这里帮助我们尊敬的客户。</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 widget">
                        <div class="row m0">
                            <h4>信息</h4>
                            <ul class="nav">
                                <li><a href="about.html">关于我们</a></li>
                                <li><a href="services.html">服务</a></li>
                                <li><a href="blog.html">博客</a></li>
                                <li><a href="#">招贤纳士</a></li>
                                <li><a href="#">顶级品牌</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 widget">
                        <div class="row m0">
                            <h4>顶级品牌</h4>
                            <ul class="nav">
                                <li><a href="#">Benicia Bed</a></li>
                                <li><a href="#">Foundry</a></li>
                                <li><a href="#">BorkHolder</a></li>
                                <li><a href="#">Burton james</a></li>
                                <li><a href="#">Copeland</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 widget">
                        <div class="row m0">
                            <h4>订阅我们的最新消息</h4>
                            <form action="subscriptionList.php" method="post" role="form">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="email" class="form-control" id="subscribeEmail" name="subscribeEmail" placeholder="请输入电子邮箱">
                                </div>
                                <input type="submit" class="form-control" value="订阅" id="submit" name="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row m0 copyRight">
            <div class="container">
                <div class="row">
                    <div class="fleft">Copyright &copy; 2017. 家居屋 All rights reserved.</div>
                    <ul class="nav nav-pills fright">
                        <li><a href="index.html">首页</a></li>
                        <li><a href="about.html">关于</a></li>
                        <li><a href="blog.html">博客</a></li>
                        <li><a href="contact.html">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
    
   
    <!--jQuery, Bootstrap and other vendor JS-->
    
    <!--jQuery-->
    <script src="${serverPath}/static/js/jquery-2.1.3.min.js"></script>
    
    <!--Google Maps-->
    <script src="http://ditu.google.cn/maps/api/js"></script>
    
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
    
    <!--Google Map JS-->
    <script src="${serverPath}/static/js/google-map.js"></script>
    
    <!--Contact JS-->
    <script src="${serverPath}/static/js/contact.js"></script>
    <script src="${serverPath}/static/js/login.js"></script>
</body>
</html>
