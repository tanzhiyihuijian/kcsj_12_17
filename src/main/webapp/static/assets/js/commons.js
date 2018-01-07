var submitSearchForm = function() {
	
	var searchWord = $("#searchWord").val().trim();
	
	if (searchWord.length == 0) {
		alert("搜索关键字为空");
		return;
	} else {
		$("#searchForm").submit();
	}
	
};
var logout = function (){
	var timer = $("#time").text();
	if (timer > 0) {
		timer--;
		$("#time").text(timer);
		t=setTimeout("logout()",1000)
	} else if (timer == 0) {
		setTimeout("top.location.href='http://i.9igcw.com/'");
	}
}
function iAlert(message, callback){
	  layer.alert(message,{skin: 'layui-layer-red',title: false,closeBtn: 0},function(){
	    layer.closeAll();
	    if("function"==typeof callback) {
	    	callback();
	    }
	});
}
function iMsg(message){
	layer.msg(message);
}
function iConfirm(message, callback) {
	layer.confirm(message, {skin: 'layui-layer-red',title: false,closeBtn: 0}, function(){
		callback();
		layer.closeAll();
	}, function(){
		layer.closeAll();
	})
}

function showError(title, error) {
	$.gritter.add({
		title: title,
		text: error,
		time: 2000,
	    speed:500,
	    fade_out_speed: 10, // how fast the notices fade out
	    fade_in_speed: 10, // how fast the notices fade out
		class_name: 'gritter-error gritter-center' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
	});
}

function showWarning(title, error) {
	$.gritter.add({
		title: title,
		text: error,
		time: 2000,
	    speed:500,
	    fade_out_speed: 10, // how fast the notices fade out
	    fade_in_speed: 10, // how fast the notices fade out
		class_name: 'gritter-warning gritter-center' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
	});
}

function showInfo(title, error, callback) {
	$.gritter.add({
		title: title,
		text: error,
		time: 2000,
		speed:500,
		fade_out_speed: 10, // how fast the notices fade out
		fade_in_speed: 10, // how fast the notices fade out
		class_name: 'gritter-success gritter-center' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
	});
	if("function" == typeof callback) {
    	callback();
    }
}

Date.prototype.format = function(format) {
	/*
	 * eg:format="yyyy-MM-dd hh:mm:ss";
	 */
    var o = {
        "M+" : this.getMonth() + 1, // month
        "d+" : this.getDate(), // day
        "h+" : this.getHours(), // hour
        "m+" : this.getMinutes(), // minute
        "s+" : this.getSeconds(), // second
        "q+" : Math.floor((this.getMonth() + 3) / 3), // quarter
        "S" : this.getMilliseconds()
        // millisecond
    }

    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4
            - RegExp.$1.length));
    }

    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1
                ? o[k]
                : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}


function isNoZeroNum(s) {//是否为非0的正整数
    var re = /^\+?[1-9][0-9]*$/;
    return re.test(s);
}

function isContainZeroNum(s) {//是否为正整数（包含0）
    if (s == 0) {
        return true;
    }
    var re = /^\+?[1-9][0-9]*$/;
    return re.test(s);
}

function isNoZeroFloat(s){//是否为正浮点类型
    var re = new RegExp("^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$");
    return re.test(s)
}

function convert2Money (price) {
    if (isNaN(price)) {
        return price;
    }
    price = price / 100;
    return price.toFixed(2);
}

function parseFloatToInt (price) {
    if (isNaN(price)) {
        return price;
    }
    price = price / 100;

    return parseFloat(price);
}

function dateShowFormatter(cellvalue, options, rowData) {
    var dateText;
    if (cellvalue) {
        var date = new Date(cellvalue);
        var month = completeTime(date.getMonth() + 1);
        dateText = date.getFullYear() + "-"
            + month  + "-"
            + completeTime(date.getDate()) + " "
            + completeTime(date.getHours()) + ":"
            + completeTime(date.getMinutes()) ;
    } else {
        dateText = "未知";
    }
    return dateText;
}

//时间小于10 显示加0  如: 09
function completeTime(number) {
    if (number < 10) {
        number = "0" + number;
    }
    return number
}
