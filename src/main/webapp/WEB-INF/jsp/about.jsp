<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>关于我们</title>

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
      <script src="${serverPath}/static/js/html5shiv.min.js"></script>
      <script src="${serverPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <jsp:include page="header.jsp" />

    <section id="breadcrumbRow" class="row">
        <h2>关于我们</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">关于我们</h4>
                <ul class="breadcrumb fright">
                    <li><a href="index.html">首页</a></li>
                    <li class="active">关于我们</li>
                </ul>
            </div>
        </div>
    </section>

    <section id="whatWeDid" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 tab_menu">
                    <div class="row m0">
                        <ul class="nav navbar-right" role="tablist" id="myTab">
                            <li role="presentation" class="active"><a href="#wwd2011" aria-controls="wwd2011" role="tab" data-toggle="tab">2014</a></li>
                            <li role="presentation"><a href="#wwd2012" aria-controls="wwd2012" role="tab" data-toggle="tab">2015</a></li>
                            <li role="presentation"><a href="#wwd2013" aria-controls="wwd2013" role="tab" data-toggle="tab">2016</a></li>
                            <li role="presentation"><a href="#wwd2014" aria-controls="wwd2014" role="tab" data-toggle="tab">2017</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 tab-contents">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="wwd2011">
                            <h3>我们在2014年做了什么</h3>

                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="wwd2012">
                            <h3>我们在2015年做了什么</h3>

                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="wwd2013">
                            <h3>我们在2016年做了什么</h3>

                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="wwd2014">
                            <h3>我们在2017年做了什么</h3>

                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                            <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们随时随地运送我们的产品，更安全地帮助我们尊敬的客户。</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="hww" class="row contentRowPad">
        <div class="container">
            <h3>我们如何工作</h3>
            <div class="col-sm-4">
                <h5><span>01.</span> 规划</h5>
                <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
            </div>
            <div class="col-sm-4">
                <h5><span>02.</span> 设计</h5>
                <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
            </div>
            <div class="col-sm-4">
                <h5><span>03.</span> 续航</h5>
                <p>我们为您提供最好的产品质量。我们一直在这里帮助我们可爱的客户。我们在任何地方运送我们的产品更安全。</p>
            </div>
        </div>
    </section>

    <section id="ourTeam" class="row contentRowPad">
        <div class="container">
            <div class="row sectionTitle">
                <h3>见我们的团队</h3>
                <h5>我们有我们的创意团队</h5>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="${serverPath}/static/images/team/1.png" alt="...">
                        <div class="caption">
                            <h4>Rues jack</h4>
                            <h5>Founder</h5>
                            <ul class="list-inline row m0">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="${serverPath}/static/images/team/2.png" alt="...">
                        <div class="caption">
                            <h4>steve broad</h4>
                            <h5>Co-Founder</h5>
                            <ul class="list-inline row m0">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="${serverPath}/static/images/team/3.png" alt="...">
                        <div class="caption">
                            <h4>olius lisa</h4>
                            <h5>Manager</h5>
                            <ul class="list-inline row m0">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="${serverPath}/static/images/team/4.png" alt="...">
                        <div class="caption">
                            <h4>samuel burn</h4>
                            <h5>Employee</h5>
                            <ul class="list-inline row m0">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="brands" class="row contentRowPad">
        <div class="container">
            <div class="row sectionTitle">
                <h3>我们的客户</h3>
                <h5>对我们的家具屋感到满意的客户</h5>
            </div>
            <div class="row brands">
                <ul class="nav navbar-nav">
                    <li><a href="#"><img src="${serverPath}/static/images/clients/1.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/clients/2.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/clients/3.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/clients/4.png" alt=""></a></li>
                    <li><a href="#"><img src="${serverPath}/static/images/clients/5.png" alt=""></a></li>
                </ul>
            </div>
        </div>
    </section>


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

    <!--FlexSlider-->
    <script src="${serverPath}/static/vendors/flexslider/jquery.flexslider-min.js"></script>

    <!--Strella JS-->
    <script src="${serverPath}/static/js/furniture.js"></script>
    <script src="${serverPath}/static/js/login.js"></script>
</body>
</html>
