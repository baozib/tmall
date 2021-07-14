
$('.condition-one>div:gt(0)').mouseenter(function () { 
    $(this).css("border","1px solid red");
});
$('.condition-one>div:gt(0)').mouseleave(function () { 
    $(this).css("border","1px solid rgb(219, 218, 218)");
});

$('.condition-two>div:gt(0)').mouseenter(function () { 
    $(this).css("border","1px solid red");
});
$('.condition-two>div:gt(0)').mouseleave(function () { 
    $(this).css("border","1px solid rgb(219, 218, 218)");
});

$('.condition-three>div:gt(0)').mouseenter(function () { 
    $(this).css("border","1px solid red");
});
$('.condition-three>div:gt(0)').mouseleave(function () { 
    $(this).css("border","1px solid rgb(219, 218, 218)");
});

var myGoods = new Array()


let url = window.location.href;
let s = url.toString();
let msg = s.substring(s.indexOf("msg=")+4,s.length);
let msgDecode = decodeURI(msg);

$('.search').attr("value",msgDecode);
//初始化
$.ajax({
    url:'/getGoodsListReAll?complex=0&content='+ msgDecode +'&price=0&type=0',
    type:'get',
    success:function (msg) {
        let parseJSON = $.parseJSON(msg);
        for (let i = 0; i < parseJSON.length; i++) {
            myGoods[i] = parseJSON[i];
        }

        for (let i = 0; i < (myGoods.length>20?20:myGoods.length); i++) {
            let detail = myGoods[i].detailMsg;
            if (detail != undefined && detail.length > 30) {
                detail = detail.substring(0, 30);
            }

            if(detail.indexOf(msgDecode) != -1){
                detail = detail.slice(0,detail.indexOf(msgDecode)) + "<font class='fr'>" +msgDecode +"</font>"+ detail.slice(detail.indexOf(msgDecode)+msgDecode.length);
            }


            $('.life-goods').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + myGoods[i].id + '" >\n' +
                '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + myGoods[i].picPath + '" alt="">\n' +
                '                <div class="font-goods">\n' +
                '                    ' + detail + '\n' +
                '                </div>\n' +
                '                <div class="under-goods"></div>\n' +
                '                <div class="cleanfloat">\n' +
                '                    <li>&#9733;</li>\n' +
                '                    <li>&#9733;</li>\n' +
                '                    <li>&#9733;</li>\n' +
                '                    <li>&#9733;</li>\n' +
                '                    <li>&#9733;</li>\n' +
                '                </div>\n' +
                '                <div class="price-goods">\n' +
                '                    $<strong>' + myGoods[i].price + '</strong>\n' +
                '                </div>\n' +
                '                <div class="recycle">\n' +
                '                    <img src="../images/篮子.png">\n' +
                '                </div>\n' +
                '            </div>');
            //星级
            $('.recycle').mouseenter(function () {
                // $('.recycle').css("background","rgb(253,217,34)");
                // $('.recycle img').attr("src","../images/篮子黑.png")
                $(this).css("background", "rgb(253,217,34)");
                $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
            });

            //篮子返回
            $('.recycle').mouseleave(function () {
                $(this).css("background", "rgb(221,223,223)");
                $(this).children('.recycle img').attr("src", "../images/篮子.png");
                // $('.recycle').css("background","rgb(221,223,223)");
                // $('.recycle img').attr("src","../images/篮子.png")
            });
            //解绑
            $('.life-goods-one').unbind('click');
            //添加点击事件
            $('.life-goods-one').click(function (e) {
                let goodId = $(this).attr("data-id");
                $.ajax({
                    url: "/verification",
                    type: 'get',
                    success: function (msg) {

                        if (msg == '1') {
                            location.href = '/tmall/detail-msg';
                            window.localStorage.setItem('id', goodId);
                        } else {
                            alert('权限不足');
                            return;
                        }

                    },
                    error: function () {
                        console.log('错误')
                    }
                });

            });
        }


        $('.pagination').append('  <li>\n' +
            '                <a href="#" aria-label="Previous">\n' +
            '                    <span aria-hidden="true">上一页</span>\n' +
            '                </a>\n' +
            '                </li>');
        for (let i = 0; i < Math.ceil(parseJSON.length/20); i++) {
            $('.pagination').append('<li class="end-page"><a href="#" class="nextPage">'+(i+1)+'</a></li>');
        }
        $('.pagination').append('  <li class="end">\n' +
            '                <a href="#" aria-label="Next">\n' +
            '                    <span aria-hidden="true">下一页</span>\n' +
            '                </a>\n' +
            '                </li>');

        //默认禁用
        $('#page-help .pagination>li:eq(1)').addClass('disabled');
        $('#page-help .pagination>li:eq(0)').addClass('disabled');

        if(Math.ceil(parseJSON.length/20) == 1){
            $('.end').addClass('disabled');
        }

        //点击分页后的事件
        $('.nextPage').click(function () {

            $('.nextPage').parent().removeClass('disabled');
            $(this).parent().addClass('disabled');
            var index = $(this).text();

            if(index == 1){
                $('#page-help .pagination>li:eq(0)').addClass('disabled');
            }else{
                $('#page-help .pagination>li:eq(0)').removeClass('disabled');
            }

            if(index == Math.ceil(parseJSON.length/20)){
                $('.end').addClass('disabled');
            }else{
                $('.end').removeClass('disabled');
            }

            let number = (parseInt(index)-1)*20;
            $('.life-goods *').remove();

            for (let i = number; i < (myGoods.length>number+20?number+20:myGoods.length); i++) {
                let detail = myGoods[i].detailMsg;
                if (detail != undefined && detail.length > 30) {
                    detail = detail.substring(1, 30);
                }
                $('.life-goods').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + myGoods[i].id + '" >\n' +
                    '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + myGoods[i].picPath + '" alt="">\n' +
                    '                <div class="font-goods">\n' +
                    '                    ' + detail + '\n' +
                    '                </div>\n' +
                    '                <div class="under-goods"></div>\n' +
                    '                <div class="cleanfloat">\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                </div>\n' +
                    '                <div class="price-goods">\n' +
                    '                    $<strong>' + myGoods[i].price + '</strong>\n' +
                    '                </div>\n' +
                    '                <div class="recycle">\n' +
                    '                    <img src="../images/篮子.png">\n' +
                    '                </div>\n' +
                    '            </div>');
                //星级
                $('.recycle').mouseenter(function () {
                    $(this).css("background", "rgb(253,217,34)");
                    $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                });

                //篮子返回
                $('.recycle').mouseleave(function () {
                    $(this).css("background", "rgb(221,223,223)");
                    $(this).children('.recycle img').attr("src", "../images/篮子.png");
                });
                //解绑
                $('.life-goods-one').unbind('click');
                //添加点击事件
                $('.life-goods-one').click(function (e) {
                    let goodId = $(this).attr("data-id");
                    $.ajax({
                        url: "/verification",
                        type: 'get',
                        success: function (msg) {
                            console.log({msg});
                            if (msg == '1') {
                                location.href = '/tmall/detail-msg';
                                window.localStorage.setItem('id', goodId);
                            } else {
                                alert('权限不足');
                                return;
                            }

                        },
                        error: function () {
                            console.log('错误')
                        }
                    });

                });
            }

        });
    }
});

//点击搜索
$('.sousuo').click(function () {
    let val = $('.anthoer').val();
    var inside = new Array();
    $.ajax({
        url:'/getGoodsListReAll?complex=0&content='+ val +'&price=0&type=0',
        type:'get',
        success:function (msg) {
            $('.life-goods *').remove();
            $('.pagination *').remove();
            let parseJSON = $.parseJSON(msg);
            for (let i = 0; i < parseJSON.length; i++) {
                inside[i] = parseJSON[i];
                console.log(inside[i].detailMsg);
            }

            console.log("_______________________________")
            for (let i = 0; i < (inside.length>20?20:inside.length); i++) {
                let detail = inside[i].detailMsg;
                if (detail != undefined && detail.length > 30) {
                    detail = detail.substring(0, 30);
                }
                if(detail.indexOf(val) != -1){
                    detail = detail.slice(0,detail.indexOf(val)) + "<div class='fr'>" +val +"</div>"+ detail.slice(detail.indexOf(val)+val.length);
                }
                console.log(detail.slice(0,detail.indexOf(val)))
                $('.life-goods').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + inside[i].id + '" >\n' +
                    '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + inside[i].picPath + '" alt="">\n' +
                    '                <div class="font-goods">\n' +
                    '                    ' + detail + '\n' +
                    '                </div>\n' +
                    '                <div class="under-goods"></div>\n' +
                    '                <div class="cleanfloat">\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                    <li>&#9733;</li>\n' +
                    '                </div>\n' +
                    '                <div class="price-goods">\n' +
                    '                    $<strong>' + inside[i].price + '</strong>\n' +
                    '                </div>\n' +
                    '                <div class="recycle">\n' +
                    '                    <img src="../images/篮子.png">\n' +
                    '                </div>\n' +
                    '            </div>');
                //星级
                $('.recycle').mouseenter(function () {
                    // $('.recycle').css("background","rgb(253,217,34)");
                    // $('.recycle img').attr("src","../images/篮子黑.png")
                    $(this).css("background", "rgb(253,217,34)");
                    $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                });

                //篮子返回
                $('.recycle').mouseleave(function () {
                    $(this).css("background", "rgb(221,223,223)");
                    $(this).children('.recycle img').attr("src", "../images/篮子.png");
                    // $('.recycle').css("background","rgb(221,223,223)");
                    // $('.recycle img').attr("src","../images/篮子.png")
                });
                //解绑
                $('.life-goods-one').unbind('click');
                //添加点击事件
                $('.life-goods-one').click(function (e) {
                    let goodId = $(this).attr("data-id");
                    $.ajax({
                        url: "/verification",
                        type: 'get',
                        success: function (msg) {

                            if (msg == '1') {
                                location.href = '/tmall/detail-msg';
                                window.localStorage.setItem('id', goodId);
                            } else {
                                alert('权限不足');
                                return;
                            }

                        },
                        error: function () {
                            console.log('错误')
                        }
                    });

                });
            }


            $('.pagination').append('  <li>\n' +
                '                <a href="#" aria-label="Previous">\n' +
                '                    <span aria-hidden="true">上一页</span>\n' +
                '                </a>\n' +
                '                </li>');
            for (let i = 0; i < Math.ceil(parseJSON.length/20); i++) {
                $('.pagination').append('<li class="end-page"><a href="#" class="nextPage">'+(i+1)+'</a></li>');
            }
            $('.pagination').append('  <li class="end">\n' +
                '                <a href="#" aria-label="Next">\n' +
                '                    <span aria-hidden="true">下一页</span>\n' +
                '                </a>\n' +
                '                </li>');

            //默认禁用
            $('#page-help .pagination>li:eq(1)').addClass('disabled');
            $('#page-help .pagination>li:eq(0)').addClass('disabled');

            if(Math.ceil(parseJSON.length/20) == 1){
                $('.end').addClass('disabled');
            }

            //点击分页后的事件
            $('.nextPage').click(function () {

                $('.nextPage').parent().removeClass('disabled');
                $(this).parent().addClass('disabled');
                var index = $(this).text();

                if(index == 1){
                    $('#page-help .pagination>li:eq(0)').addClass('disabled');
                }else{
                    $('#page-help .pagination>li:eq(0)').removeClass('disabled');
                }

                if(index == Math.ceil(parseJSON.length/20)){
                    $('.end').addClass('disabled');
                }else{
                    $('.end').removeClass('disabled');
                }

                let number = (parseInt(index)-1)*20;
                $('.life-goods *').remove();

                for (let i = number; i < (inside.length>number+20?number+20:inside.length); i++) {
                    let detail = inside[i].detailMsg;
                    if (detail != undefined && detail.length > 30) {
                        detail = detail.substring(1, 30);
                    }
                    $('.life-goods').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + inside[i].id + '" >\n' +
                        '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + inside[i].picPath + '" alt="">\n' +
                        '                <div class="font-goods">\n' +
                        '                    ' + detail + '\n' +
                        '                </div>\n' +
                        '                <div class="under-goods"></div>\n' +
                        '                <div class="cleanfloat">\n' +
                        '                    <li>&#9733;</li>\n' +
                        '                    <li>&#9733;</li>\n' +
                        '                    <li>&#9733;</li>\n' +
                        '                    <li>&#9733;</li>\n' +
                        '                    <li>&#9733;</li>\n' +
                        '                </div>\n' +
                        '                <div class="price-goods">\n' +
                        '                    $<strong>' + inside[i].price + '</strong>\n' +
                        '                </div>\n' +
                        '                <div class="recycle">\n' +
                        '                    <img src="../images/篮子.png">\n' +
                        '                </div>\n' +
                        '            </div>');
                    //星级
                    $('.recycle').mouseenter(function () {
                        $(this).css("background", "rgb(253,217,34)");
                        $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                    });

                    //篮子返回
                    $('.recycle').mouseleave(function () {
                        $(this).css("background", "rgb(221,223,223)");
                        $(this).children('.recycle img').attr("src", "../images/篮子.png");
                    });
                    //解绑
                    $('.life-goods-one').unbind('click');
                    //添加点击事件
                    $('.life-goods-one').click(function (e) {
                        let goodId = $(this).attr("data-id");
                        $.ajax({
                            url: "/verification",
                            type: 'get',
                            success: function (msg) {
                                console.log({msg});
                                if (msg == '1') {
                                    location.href = '/tmall/detail-msg';
                                    window.localStorage.setItem('id', goodId);
                                } else {
                                    alert('权限不足');
                                    return;
                                }

                            },
                            error: function () {
                                console.log('错误')
                            }
                        });

                    });
                }

            });
        }
    });
});


let name = document.cookie;
let value = name.substring(name.indexOf('=') + 1, name.length);
console.log(name)
//判断用户是否登入了
if (value != undefined && value != null) {
    $.ajax({
        url: "/verification",
        type: 'get',
        success: function (msg) {
            if (msg != '1') {
                document.cookie = "name='';expires=Thu, 01 Jan 1970 00:00:00 GMT";
                $('.userhide').css("visibility", "visible");
                $('.myself-name').css("visibility", "hidden");
                return;
            }
            //把登入注册隐藏
            $('.userhide').css("visibility", "hidden");
            //赋值
            $('.myself-name').html("您好,尊贵的" + value);
            $('.myself-name').css("visibility", "visible");
        }
    });

}