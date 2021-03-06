<%@ page contentType="text/html;charset=UTF-8" %>
<footer class="row">
    <div class="row m0 topFooter">
        <div class="container line1">
            <div class="row footFeatures">
                <div class="col-sm-4 footFeature">
                    <div class="media">
                        <div class="media-left icon"><img src="${pageContext.request.contextPath}/static/images/icons/car3.png" alt=""></div>
                        <div class="media-body texts">
                            <h4>全球</h4>
                            <h2>免运费</h2>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 footFeature">
                    <div class="media m0">
                        <div class="media-left icon"><img src="${pageContext.request.contextPath}/static/images/icons/tel24-7_2.png" alt=""></div>
                        <div class="media-body texts">
                            <h4>24小时服务热线</h4>
                            <h2>123 456 789</h2>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 footFeature">
                    <div class="media m0">
                        <div class="media-left icon"><img src="${pageContext.request.contextPath}/static/images/icons/shopping-bag2.png" alt=""></div>
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