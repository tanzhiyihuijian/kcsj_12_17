<jsp:useBean id="serverPath" scope="request" type="java.lang.String"/>
<%--
  Created by IntelliJ IDEA.
  User: 王波
  Date: 2018-01-07
  Time: 14:18
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Jquery learning</title>
</head>
<body>

<div id="div"></div>

<li class="i1">item-1</li>
<li class="i2">item-2</li>
<li class="i3">item-3</li>
<li class="i4">item-4</li>
<li class="i5">item-5</li>
<li class="i6">item-6</li>


<div id="box">
    <div>
        <div>
            <p id="info"> 这是一个段落 </p>
        </div>
    </div>
</div>



<script src="${serverPath}/static/lib/jquery/jquery-3.2.1.js"></script>

<script>

    // 1. dom元素 与 jquery元素的判断
    let domObj = document.getElementById('div');
    let jqueryObj = $('#div');

    // 检测 dom元素
    let nodeType = domObj.nodeType;
    // 检测 jquery元素
    let jquery = jqueryObj.jquery;

    console.log('domObj.nodeType = ' + nodeType + '\njqueryObj.jquery = ' + jquery);

    // dom -> jquery
    console.log($(domObj));
    // jquery -> dom
    console.log(jqueryObj[0]);
    console.log(jqueryObj.get(0));


    // 2. jquery 创建元素
    let $li = $('<li>Hello</li>');
    console.log($li);

    // 将 li元素追加到 body元素的最后面
    $li.appendTo('body');

    // 添加元素同时设置属性
    // 必须是一个空元素, 否则第二个参数的配置项无效
    let link = $('<a>', {
        text: 'Google',
        href: 'http://www.google.com',
        target: '_blank',
        title: 'goto google'
    });

    link.appendTo('body');

    let link2 = $('<a name="google"> Google</a>').attr({
        href: 'http://www.google.com',
        target: '_blank',
        title: 'goto google'
    });

    link2.appendTo('body');


    // 3. 检查元素数量
    $li = $('li');
    console.log($li[6]);
    console.log($li.get(5));
    console.log($li.eq(88));
    console.log($li.eq(88).get(0));


    // 4. 提取元素
    // [index]          返回 dom元素
    console.log($li[0]);

    // get(index)       返回 dom元素或元素集合 (不加 index参数时,会返回数组)
    console.log($li.get(0));
    console.log($li.get(-1));
    console.log($li.get());

    // eq(index)        返回 jquery对象 (不加 index参数时, 不会返回)
    // 使用 方法的效率会比使用选择器高
    console.log($li.eq(1));
    console.log($('li:eq(1)'));
    console.log($li.eq());

    // first()
    console.log($li.first());
    console.log($('li:first'));

    // last()
    console.log($li.last());
    console.log($('li:last'));


    // 5. 通过关系查找 jquery对象
    let $info = $('#info');
    let parents = $info.parents('div');
    console.log(parents);

    // children() 不返回文本节点
    let children = $info.children();
    console.log(children);

    // 会返回带文本的节点
    let contents = $info.contents();
    console.log(contents);

    let $box = $('#box');
    let p = $box.find('p');
    console.log(p)

    // 常用的通过关系查找 jquery对象的方法
    // 父子类关系
    // 1. children([selector])
    // 2. contents()
    // 3. find([selector])
    // 4. parent([selector])
    // 5. parents([selector])
    // 6. parentsUntil([selector])      不包含最后一个元素
    // 7. closest(selector)             从当前元素开始查找, 找到后立即停止查找

    // 兄弟关系
    // 1. next([selector])
    // 2. nextAll([selector])
    // 3. nextUntil([selector])
    // 4. prev([selector])
    // 5. prevAll([selector])
    // 6. prevUntil([selector])
    // 7. siblings([selector])



</script>

</body>
</html>
