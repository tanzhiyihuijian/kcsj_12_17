$(document).ready(function () {

    let userJson = sessionStorage.getItem('user');
    let $loginElem = $('#login-elem');
    let $titleElem = $('#titles');

    $titleElem.append('<li><a href="product-manage.html">进入后台管理</a></li>');

    if (userJson) {
        let user = JSON.parse(userJson);
        $loginElem.html('<a>欢迎您: ' + user.username + '</a>');
        $titleElem.append('<li><a id="logout" href="javascript:logout();">退出</a></li>');

        let isAdmin = user.username === 'admin' && user.password === 'admin';
        if (isAdmin) {
            // $titleElem.append('<li><a href="product-manage.html">进入后台管理</a></li>');
        }
    } else {
        $loginElem.html('<a href="login.html">登录</a>');
    }

    $('#logout').on('click', function () {
        logout();
    });

    function logout() {
        sessionStorage.removeItem('user');
        window.location.reload();
    }


});