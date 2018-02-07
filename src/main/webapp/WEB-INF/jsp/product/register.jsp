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
    <title>注册</title>

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

<jsp:include page="header.jsp" />

<section id="breadcrumbRow" class="row">
    <h2>注册</h2>
    <div class="row pageTitle m0">
        <div class="container">
            <h4 class="fleft">注册</h4>
            <ul class="breadcrumb fright">
                <li><a href="index.html">首页</a></li>
                <li class="active">注册</li>
            </ul>
        </div>
    </div>
</section>

<section id="contactRow" class="row contentRowPad">
    <div class="container">
        <div class="row col-sm-offset-6">
            <div class="col-sm-6">
                <div class="row m0">
                    <h4 class="contactHeading heading">注册</h4>
                </div>
                <div class="row m0 contactForm">
                    <div class="row m0">
                        <label for="username">用户名 *</label>
                        <input type="text" class="form-control" id="username">
                    </div>
                    <div class="row m0">
                        <label for="password">密码 *</label>
                        <input type="password" class="form-control" id="password">
                    </div>
                    <div class="row m0">
                        <label for="email">邮箱</label>
                        <input type="email" class="form-control" id="email">
                    </div>
                    <br>
                    <button class="btn btn-primary btn-xs filled col-sm-12" id="submit">注册</button>
                </div>
            </div>
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

<!--Rating-->
<script src="${serverPath}/static/vendors/bootstrap-rating/bootstrap-rating.min.js"></script>

<!--FlexSlider-->
<script src="${serverPath}/static/vendors/flexslider/jquery.flexslider-min.js"></script>

<!--Strella JS-->
<script src="${serverPath}/static/js/furniture.js"></script>
<script src="${serverPath}/static/js/login.js"></script>

</body>


<script>

$(document).ready(function () {

    $('#submit').on('click', function () {
        let username = $('#username').val().trim();
        let password = $('#password').val().trim();
        let email = $('#email').val().trim();

        if (username === '') {
            alert('用户名不得为空!');
            return;
        }
        if (password === '') {
            alert('密码不得为空!');
            return;
        }
        if (email === '') {
            alert('邮箱不得为空!');
            return;
        }

        let user = {
            username: username,
            password: password,
            email: email
        };

        $.ajax({
            type: "POST",
            url : "/kcsj/furniture/register-submit",
            data : {
                user: JSON.stringify(user)
            },
            dataType: 'json',
            success : function(result) {
                if (result.success) {
                    sessionStorage.setItem('user', result.user);
                    window.location.href = '${serverPath}' + '/furniture/index.html';
                } else {
                    alert(result.message);
                }
            },
            error : function() {
                alert('注册失败!');
            }
        });

    });









});

</script>





</html>

