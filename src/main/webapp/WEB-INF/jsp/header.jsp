<%@ page contentType="text/html;charset=UTF-8" %>
<header class="row" id="header">
    <div class="row m0 top_menus">
        <div class="container">
            <div class="row">
                <ul class="nav nav-pills fleft" id="titles">
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
                    <a href="index.html" class="logo_a"><img src="${pageContext.request.contextPath}/static/images/logo.png" alt="Furniture House"></a>
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
                <li><img src="${pageContext.request.contextPath}/static/images/icons/returns.png" alt="">30天无忧退换</li>
                <li><img src="${pageContext.request.contextPath}/static/images/icons/delivery-car.png" alt="">急速快递</li>
                <li><img src="${pageContext.request.contextPath}/static/images/icons/tel24-7.png" alt="">7*24 售后服务</li>
            </ul>
        </div>
    </div>
</header> <!--Header-->
