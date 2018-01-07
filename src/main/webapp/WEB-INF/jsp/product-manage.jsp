<%--
  Created by IntelliJ IDEA.
  User: 王波
  Date: 2017-12-24
  Time: 16:53
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理</title>

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


    <link rel="stylesheet" href="${serverPath}/static/assets/css/googleapis-css.css?family=Open+Sans:400,300"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/jquery.gritter.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/ui.jqgrid.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/datepicker.css"/>
    <link rel="stylesheet" href="${serverPath}/static/assets/css/bootstrap-datetimepicker.min.css"/>




</head>
<body>

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
                <li><a href="javascript:addProduct()">新增商品</a></li>
                <li><a href="javascript:edit()">编辑商品</a></li>
                <li><a href="javascript:deleteRow()">删除商品</a></li>
            </ul>
        </div>
    </div>
</header> <!--Header-->


<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="widget-box">
                        <div class="widget-body">
                            <span>
                                <table id="grid-table"></table>
                                <div id="grid-pager"></div>
                                <div id="pagernav"></div>
                            </span>
                        </div>
                    </div>
                </div>
            </div><!-- /row -->
            <input id="gritter-light" checked="" type="checkbox" class="ace ace-switch ace-switch-5"/>
            <div id="modal-refresh-manager" class="modal fade" tabindex="-1">
                <div style="position:absolute;text-align:center; top:50%;left:45%;">
                    <h3 class="smaller lighter grey">
                        <i class="icon-spinner icon-spin orange bigger-125"></i>
                    </h3>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.main-content -->
    </div><!-- /.main-container-inner -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->



<div id="modal-add-product" class="modal fade" tabindex="-1">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <div class="modal-header no-padding">
                <div class="table-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="false">
                        <span class="white">&times;</span>
                    </button>
                    <span>添加商品:</span>
                </div>
            </div>
            <div class="modal-body no-padding">
                <div class="form-group">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>商品名</td>
                            <td><label><input id="add-product-name" type="text" style="width: 250px" /></label></td>
                        </tr>
                        <tr>
                            <td>成本</td>
                            <td><label><input id="add-product-cost" min="1" type="number" style="width: 250px"/></label></td>
                        </tr>
                        <tr>
                            <td>售价</td>
                            <td><label><input id="add-product-price" min="1" type="number" style="width: 250px"></label></td>
                        </tr>
                        <tr>
                            <td>制造商</td>
                            <td><label><input id="add-product-factory" type="text" style="width: 250px;"></label></td>
                        </tr>
                        <tr>
                            <td>图片</td>
                            <td>
                                <div>
                                    <img id="add-product-image" style="width: 240px; height: 100px; display: none" src="" alt="未上传图片" />
                                    <input name="file" type="file" id="add-product-upload-image" onchange="uploadFile('add-product-upload-image', 'add-product-image')" />
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="submit" id="add-product-submit" data-shopId="">
                        <span class="col-md-offset-4">
                            <button class="btn btn-sm btn-info" type="button" data-loading-text="保存中...">
                                <i class="icon-save bigger-110"></i>
                                保存
                            </button>
                        </span>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div><!-- /.modal-dialog -->


<div id="modal-edit-product" class="modal fade" tabindex="-1">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <div class="modal-header no-padding">
                <div class="table-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="false">
                        <span class="white">&times;</span>
                    </button>
                    <span>编辑商品:</span>
                </div>
            </div>
            <div class="modal-body no-padding">
                <div class="form-group">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>编号</td>
                            <td><label><input id="edit-product-id" type="text" style="width: 250px" disabled /></label></td>
                        </tr>
                        <tr>
                            <td>商品名</td>
                            <td><label><input id="edit-product-name" type="text" style="width: 250px" /></label></td>
                        </tr>
                        <tr>
                            <td>成本</td>
                            <td><label><input id="edit-product-cost" min="1" type="number" style="width: 250px"/></label></td>
                        </tr>
                        <tr>
                            <td>售价</td>
                            <td><label><input id="edit-product-price" min="1" type="number" style="width: 250px"></label></td>
                        </tr>
                        <tr>
                            <td>制造商</td>
                            <td><label><input id="edit-product-factory" type="text" style="width: 250px"></label></td>
                        </tr>
                        <tr>
                            <td>图片</td>
                            <td>
                                <div>
                                    <img id="edit-product-image" style="width: 240px; height: 100px;" src="" alt="未上传图片" />
                                    <input name="file" type="file" id="edit-product-upload-image" onchange="uploadFile('edit-product-upload-image', 'edit-product-image')" />
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="submit" id="edit-product-submit" data-shopId="">
                        <span class="col-md-offset-4">
                            <button class="btn btn-sm btn-info" type="button" data-loading-text="保存中...">
                                <i class="icon-save bigger-110"></i>
                                保存
                            </button>
                        </span>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div><!-- /.modal-dialog -->







<jsp:include page="footer.jsp" />



<!--jQuery, Bootstrap and other vendor JS-->

<!--jQuery-->
<script src="${serverPath}/static/js/jquery-2.1.3.min.js"></script>
<!--Bootstrap JS-->
<script src="${serverPath}/static/js/bootstrap.min.js"></script>
<!--Nice Scroll-->
<script src="${serverPath}/static/vendors/nicescroll/jquery.nicescroll.js"></script>
<!--Lightshot-->
<script src="${serverPath}/static/vendors/lightbox/js/lightbox.min.js"></script>
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



<script src="${serverPath}/static/assets/js/jquery.dataTables.min.js"></script>
<script src="${serverPath}/static/assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="${serverPath}/static/assets/js/bootstrap-datetimepicker.min.js"></script>
<script src="${serverPath}/static/assets/js/ace-elements.min.js"></script>
<script src="${serverPath}/static/assets/js/ace.min.js"></script>
<script src="${serverPath}/static/assets/js/bootstrap-datepicker.min.js"></script>
<script src="${serverPath}/static/assets/js/jquery.jqGrid.min.js"></script>
<script src="${serverPath}/static/assets/js/grid.locale-cn.js"></script>
<script src="${serverPath}/static/assets/js/jquery.gritter.min.js"></script>
<script src="${serverPath}/static/assets/js/commons.js"></script>
<script src="${serverPath}/static/assets/js/ajaxfileupload.js"></script>

<script src="${serverPath}/static/js/product-manage.js"></script>

</body>


</html>

