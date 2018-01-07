$(document).ready(function () {

    let jqGrid_selector = '#grid-table';

    $(jqGrid_selector).jqGrid({
        //direction: "rtl",
        url: 'product-list',
        mtype: 'POST',
        datatype: 'json',

        autowidth: true,
        caption: '商品列表',

        // 排序相关
        sidx: 'id',
        sortorder: 'desc',
        sortname: 'id',

        // 页脚设置
        rowNum: 10,
        rowList: [10, 20, 30],
        pager: '#grid-pager',
        viewrecords: true,

        // 编辑
        editurl: '/mgr/mall/product/first-category-edit',

        // 高度随记录数而改变
        height: 'auto',

        colModel: [
            {
                name: 'id',
                label: '编号',
                width: 30,
                type: 'int',
                sorttype: "int",
                edittype: 'int'
            },
            {
                name: 'name',
                label: '名称',
                width: 60,
                editable: true
            },
            {
                name: 'cost',
                label: '成本',
                width: 30,
                hidden: false,
                editable: false
            },
            {
                name: 'price',
                label: '售价',
                width: 30,
                hidden: false,
                editable: false
            },
            {
                name: 'factory',
                label: '制造商',
                width: 100,
                hidden: false,
                editable: false
            },
            {
                name: 'imageUrl',
                label: '图片',
                width: 100,
                formatter: showPicture,
                editable: true
            },
            {
                name: 'createTime',
                label: '创建时间',
                width: 40,
                formatter: dateFormatter,
                editable: false
            },
            {
                name: 'valid',
                label: '是否有效',
                width: 40,
                formatter: statusFormatter,
                editable: true,
                edittype: 'custom',
                editoptions: {
                    custom_element: validCustomElem,
                    custom_value: validCustomValue
                }
            },
            {
                name: 'operation',
                index: '',
                label: '操作',
                width: 60,
                fixed: false,
                sortable: false,
                resize: false,
                formatter: myActionFormatter

            }
        ],

        loadComplete: function (data) {
            // 隐藏滚动条
            $(jqGrid_selector).closest(".ui-jqgrid-bdiv").css({'overflow-y': 'hidden', 'overflow-x': 'hidden'});

            var table = this;
            setTimeout(function () {
                updatePagerIcons(table);
            }, 0);
        }
    });

});

function addProduct() {
    $('#modal-add-product').modal('show');
}

// 添加商品提交
$('#add-product-submit').on('click', function () {

    let name = $('#add-product-name').val();
    let cost = $('#add-product-cost').val();
    let price = $('#add-product-price').val();
    let factory = $('#add-product-factory').val();
    let image = $('#add-product-image').attr('src');

    if (name.trim().length === 0) {
        alert('名称不可为空!');
        return;
    }

    if (+cost < 0) {
        alert('成本价不能为负数!');
        return;
    }

    if (+price < 0) {
        alert('售价不能为负数!');
        return;
    }

    if (!factory) {
        alert('制造商为必填项');
        return;
    }

    if (image.trim().length < 0) {
        alert('请上传图片');
        return;
    }

    let product = {
        name: name,
        cost: cost,
        price: price,
        factory: factory,
        imageUrl: image
    };

    // 获取订单支付信息
    $.ajax({
        url: 'add-product',
        type: 'post',
        dataType: 'json',
        data: {
            product: JSON.stringify(product)
        },
        success: function (result) {
            if (result.success) {
                alert('添加商品成功');
                window.location.reload();
            } else {
                alert(result.message);
            }
        },
        error: function () {
            alert('通信失败, 请联系管理员!');
        }
    });

});

// 图片上传
function uploadFile(fileElemId, imgElemId) {

    if (!fileElemId || !imgElemId) {
        return;
    }

    $.ajaxFileUpload({
        url: 'upload-file-to-qiniu',
        secureuri: false,
        fileElementId: fileElemId,
        dataType: 'json',
        success: function (result) {
            if (result.success) {
                let imageUrl = result.imageUrl;
                console.log('image : ' + imageUrl);

                let $imageElem = $('#' + imgElemId);
                $imageElem.attr('src', imageUrl);
                $imageElem.css('display', '');
            }
        },
        error: function () {
            alert('上传失败, 请重试');
        }
    });
}

function edit() {
    let id = +$('#grid-table').jqGrid('getGridParam','selrow');
    if (id <= 0) {
        alert('请先选中要编辑的行!');
        return;
    }
    editProduct(id);

}

function deleteRow() {
    let id = +$('#grid-table').jqGrid('getGridParam','selrow');
    if (id <= 0) {
        alert('请先选中要删除的行!');
        return;
    }

    let b = confirm('确认要删除该行数据吗?');
    if (b) {
        deleteProduct(id);
    }

}



function editProduct(id) {

    if (!id) {
        alert('商品编号有误!');
        return;
    }

    $.ajax({
        url: 'get-product-info',
        type: 'post',
        dataType: 'json',
        data: {
            id: id
        },
        success: function (result) {
            if (result.success) {

                let product = JSON.parse(result.product);

                $('#edit-product-id').val(product.id);
                $('#edit-product-name').val(product.name);
                $('#edit-product-cost').val(product.cost);
                $('#edit-product-price').val(product.price);
                $('#edit-product-factory').val(product.factory);
                $('#edit-product-image').attr('src', product.imageUrl);

                $('#modal-edit-product').modal('show');
            } else {
                alert(result.message);
            }
        },
        error: function () {
            alert('通信失败, 请联系管理员!');
        }
    });
}

$('#edit-product-submit').on('click', function () {

    let id = $('#edit-product-id').val();
    let name = $('#edit-product-name').val();
    let cost = $('#edit-product-cost').val();
    let price = $('#edit-product-price').val();
    let factory = $('#edit-product-factory').val();
    let image = $('#edit-product-image').attr('src');

    if (name.trim().length === 0) {
        alert('名称不可为空!');
        return;
    }

    if (factory.trim().length === 0) {
        alert('制造商不可为空!');
        return;
    }

    if (+cost < 0) {
        alert('成本价不能为负数!');
        return;
    }

    if (+price < 0) {
        alert('售价不能为负数!');
        return;
    }

    if (image.trim().length < 0) {
        alert('请上传图片');
        return;
    }

    let product = {
        id: id,
        name: name,
        cost: cost,
        price: price,
        factory: factory,
        imageUrl: image
    };

    // 获取订单支付信息
    $.ajax({
        url: 'edit-product',
        type: 'post',
        dataType: 'json',
        data: {
            product: JSON.stringify(product)
        },
        success: function (result) {
            if (result.success) {
                alert('商品修改成功');
                window.location.reload();
            } else {
                alert(result.message);
            }
        },
        error: function () {
            alert('通信失败, 请联系管理员!');
        }
    });


});

function deleteProduct(id) {

    if (!id) {
        alert('商品编号有误!');
        return;
    }

    $.ajax({
        url: 'delete-product-by-id',
        type: 'post',
        dataType: 'json',
        data: {
            id: id
        },
        success: function (result) {
            if (result.success) {
                alert('删除商品成功!');
                window.location.reload();
            } else {
                alert(result.message);
            }
        },
        error: function () {
            alert('通信失败, 请联系管理员!');
        }
    });

}


function validCustomElem(value, options) {

    var status = (value.split('</')[0]).split('>')[1];
    var y = status === '有效' ? 'selected' : '';
    var n = status === '无效' ? 'selected' : '';

    return '<div>' +
        '<select id="valid-select">' +
        '<option value="Y"' + y + '>有效</option' +
        '><option value="N"' + n + '>无效</option>' +
        '</select>' +
        '</div>';
}

function validCustomValue(elem, operation, value) {
    if (operation === 'get') {
        return $(elem).val();
    } else if (operation === 'set') {
        $(elem).val(value);
    }
}



function showPicture(cellValue) {
    return "<div><img src='" +cellValue  + "' height='100' width='200' /></div>";
}


function myActionFormatter(cellValue, options, rowData) {
    let id = rowData.id;
    return '<a href="javascript:editProduct('+ id + ')">编辑</a>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<a href="javascript:deleteProduct('+ id + ')">删除</a>';
}


function dateFormatter(cellvalue) {
    var dateText;
    if (cellvalue) {
        var date = new Date(cellvalue);
        dateText = date.getFullYear() + "-"
            + completeTime(date.getMonth() + 1) + "-"
            + completeTime(date.getDate()) + " "
            + completeTime(date.getHours()) + ":"
            + completeTime(date.getMinutes());
    } else {
        dateText = "未知";
    }
    return dateText;
}

function completeTime(number) {
    if (number < 10) {
        number = "0" + number;
    }
    return number
}

function statusFormatter(cellvalue, options, rowData) {
    var status;
    if (rowData.valid === 'Y') {
        status = "<span class='label label-success arrowed'>有效</span>";
    } else if (rowData.valid === 'N') {
        status = "<span class='label label-danger arrowed'>无效</span>"
    } else {
        return cellvalue;
    }
    return status;
}

function uploadImg(index) {

    if ($('#picUrl').children().length < 2) {
        $.ajaxFileUpload(
            {
                url: '/mgr/mall/product/category-image-upload',
                secureuri: false,
                fileElementId: 'image-select',
                dataType: 'json',
                success: function (data) {
                    if (data.success) {
                        var imgSrc = data.imgSrc;
                        console.log('image : ' + imgSrc);
                        var imageElem = '<div><img id="show-image" src="' + imgSrc + '" width="100" height="100"></div>';

                        if (index === 0)
                            $('#image-select').before(imageElem);
                        if (index === 1)
                            $('#show-image').replaceWith(imageElem);
                    }
                }
            }
        );
    }
}


//replace icons with FontAwesome icons like above
function updatePagerIcons(table) {
    var replacement = {
        'ui-icon-seek-first': 'icon-double-angle-left bigger-140',
        'ui-icon-seek-prev': 'icon-angle-left bigger-140',
        'ui-icon-seek-next': 'icon-angle-right bigger-140',
        'ui-icon-seek-end': 'icon-double-angle-right bigger-140'
    };
    $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(
        function () {
            var icon = $(this);
            var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

            if ($class in replacement)
                icon.attr('class', 'ui-icon ' + replacement[$class]);
        });
}






