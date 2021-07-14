
let ale = $(".alert-danger");
$('.myOpear').unbind('click');


//水果添加图片
    $.ajax({
        url: '/getGoodsListReType?limit=8&type=1',
        type: 'get',
        success: function (msg) {
            var parseJSON = $.parseJSON(msg);
            for (let i = 0; i < parseJSON.length; i++) {
                let detail = parseJSON[i].detailMsg;
                if (detail != undefined && detail.length > 30) {
                    detail = detail.substring(1, 30);
                }
                //动态添加
                $('#index-life').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + parseJSON[i].id + '" >\n' +
                    '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + parseJSON[i].picPath + '" alt="">\n' +
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
                    '                    $<strong>' + parseJSON[i].price + '</strong>\n' +
                    '                </div>\n' +
                    '                <div class="recycle">\n' +
                    '                    <img src="../images/篮子.png">\n' +
                    '                </div>\n' +
                    '            </div>');
                //星级

            }
            $('.recycle').unbind('mouseenter');
            //篮子变色
            $('.recycle').mouseenter(function () {
                $(this).css("background", "rgb(253,217,34)");
                $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
            });
            $('.recycle').unbind('mouseleave');
            //篮子返回
            $('.recycle').mouseleave(function () {
                $(this).css("background", "rgb(221,223,223)");
                $(this).children('.recycle img').attr("src", "../images/篮子.png");

            });
            $('.recycle').unbind('click');
            //点击篮子
            $('.recycle').click(function (e) {
                e.stopPropagation();
                $.ajax({
                    url: "/verification",
                    type: 'get',
                    success: function (msg) {
                        console.log({msg});
                        if (msg == '1') {
                            $(this).unbind('mouseleave');
                            $(this).css("background", "rgb(253,217,34)");
                            $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                            alert('添加成功');
                        } else {
                            alert('权限不足');
                            return;
                        }

                    }
                });

            });
            //解绑
            $('.life-goods-one').unbind('click');
            //添加点击事件
            $('.life-goods-one').click(function (e) {
                console.log(111111)
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

        },

    });


//家具添加图片
    $.ajax({
        url: '/getGoodsListReType?limit=8&type=4',
        type: 'get',
        success: function (msg) {
            var parseJSON = $.parseJSON(msg);
            for (let i = 0; i < parseJSON.length; i++) {
                let detail = parseJSON[i].detailMsg;
                if (detail.length > 30) {
                    detail = detail.substring(1, 30);
                }
                $('#index-furniture').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + parseJSON[i].id + '" >\n' +
                    '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + parseJSON[i].picPath + '" alt="">\n' +
                    '                <div class="font-goods">\n' +
                    '                   ' + detail + '\n' +
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
                    '                    $<strong>' + parseJSON[i].price + '</strong>\n' +
                    '                </div>\n' +
                    '                <div class="recycle">\n' +
                    '                    <img src="../images/篮子.png">\n' +
                    '                </div>\n' +
                    '            </div>');
            }
            $('.recycle').unbind('mouseenter');
            //篮子变色
            $('.recycle').mouseenter(function () {
                // $('.recycle').css("background","rgb(253,217,34)");
                // $('.recycle img').attr("src","../images/篮子黑.png")
                $(this).css("background", "rgb(253,217,34)");
                $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
            });
            $('.recycle').unbind('mouseleave');
            //篮子返回
            $('.recycle').mouseleave(function () {
                $(this).css("background", "rgb(221,223,223)");
                $(this).children('.recycle img').attr("src", "../images/篮子.png");
                // $('.recycle').css("background","rgb(221,223,223)");
                // $('.recycle img').attr("src","../images/篮子.png")
            });
            $('.recycle').unbind('click');
            //点击篮子
            $('.recycle').click(function (e) {
                e.stopPropagation();
                $.ajax({
                    url: "/verification",
                    type: 'get',
                    success: function (msg) {
                        console.log({msg});
                        if (msg == '1') {
                            $(this).unbind('mouseleave');
                            $(this).css("background", "rgb(253,217,34)");
                            $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                            alert('添加成功');
                        } else {
                            alert('权限不足');
                            return;
                        }

                    }
                });

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
        },

    });

//女装添加图片
    $.ajax({
        url: '/getGoodsListReType?limit=8&type=3',
        type: 'get',
        success: function (msg) {
            var parseJSON = $.parseJSON(msg);
            for (let i = 0; i < parseJSON.length; i++) {
                let detail = parseJSON[i].detailMsg;
                if (detail.length > 30) {
                    detail = detail.substring(1, 30);
                }
                $('#index-womenSClothing').append('  <div class="life-goods-one shadow-sm bg-white rounded" data-id="' + parseJSON[i].id + '" >\n' +
                    '                <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/' + parseJSON[i].picPath + '" alt="">\n' +
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
                    '                    $<strong>' + parseJSON[i].price + '</strong>\n' +
                    '                </div>\n' +
                    '                <div class="recycle">\n' +
                    '                    <img src="../images/篮子.png">\n' +
                    '                </div>\n' +
                    '            </div>');
            }
            $('.recycle').unbind('mouseenter');
            //篮子变色
            $('.recycle').mouseenter(function () {

                $(this).css("background", "rgb(253,217,34)");
                $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
            });
            $('.recycle').unbind('mouseleave');
            //篮子返回
            $('.recycle').mouseleave(function () {
                $(this).css("background", "rgb(221,223,223)");
                $(this).children('.recycle img').attr("src", "../images/篮子.png");

            });
            $('.recycle').unbind('click');
            //点击篮子
            $('.recycle').click(function (e) {
                e.stopPropagation();
                $.ajax({
                    url: "/verification",
                    type: 'get',
                    success: function (msg) {
                        console.log({msg});
                        if (msg == '1') {
                            $(this).unbind('mouseleave');
                            $(this).css("background", "red");
                            $(this).children('.recycle img').attr("src", "../images/篮子黑.png")
                            alert('添加成功');
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
        },

    });


    document.onscroll = function () {
        var scrollTop = document.body.scrollTop;
        let topFixed = $('.top-fixed');
        if (scrollTop > 800) {

            // topFixed.css("display","block");
            topFixed.fadeIn(500);
        } else {
            topFixed.fadeOut(500);
        }
    }



    $('.patch1').mouseenter(function () {
        $('.cra-pic img:nth-child(1)').css("visibility", "visible")
    });
    $('.patch1').mouseleave(function () {
        $('.cra-pic img:nth-child(1)').css("visibility", "hidden")
    });

    $('.patch2').mouseenter(function () {
        $('.cra-pic img:nth-child(2)').css("visibility", "visible")
    });
    $('.patch2').mouseleave(function () {
        $('.cra-pic img:nth-child(2)').css("visibility", "hidden")
    });


    $('.patch3').mouseenter(function () {
        $('.cra-pic img:nth-child(3)').css("visibility", "visible")
    });
    $('.patch3').mouseleave(function () {
        $('.cra-pic img:nth-child(3)').css("visibility", "hidden")
    });


    $('.patch4').mouseenter(function () {
        $('.cra-pic img:nth-child(4)').css("visibility", "visible")
    });
    $('.patch4').mouseleave(function () {
        $('.cra-pic img:nth-child(4)').css("visibility", "hidden")
    });


    $('.patch5').mouseenter(function () {
        $('.cra-pic img:nth-child(5)').css("visibility", "visible")
    });
    $('.patch5').mouseleave(function () {
        $('.cra-pic img:nth-child(5)').css("visibility", "hidden")
    });


    $('.patch6').mouseenter(function () {
        $('.cra-pic img:nth-child(6)').css("visibility", "visible")
    });
    $('.patch6').mouseleave(function () {
        $('.cra-pic img:nth-child(6)').css("visibility", "hidden")
    });

//篮子变色
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

//显示购物车
    let shopCart = $('.shop-car');
    $('.shop-cart-pic').click(function () {
        $.ajax({
            url: "/verification",
            type: 'get',
            success: function (msg) {
                //正确
                if (msg == '1') {
                    var sum = parseFloat("0.00");
                    $('.shop-msg-list *').remove()
                    $.ajax({
                        url: '/getShopCarts',
                        type: 'get',
                        success:function (msg) {
                            let parseJSON = $.parseJSON(msg);
                            for (let i = 0; i < parseJSON.length; i++) {
                                //let id = parseJSON[i].goodsId;
                                //let price = parseJSON[i].allPrice;
                                //console.log(id);
                                //查看详情
                                sum +=  parseFloat(parseJSON[i].allPrice);
                                $.ajax({
                                    url:'/getMessage?id='+ parseJSON[i].goodsId,
                                    async: false,
                                    type: 'get',
                                    success:function (msg) {
                                        //console.log(id);
                                        let parseJSON1 = $.parseJSON(msg);
                                        let content = parseJSON1.detailMsg;
                                        let picPath = parseJSON1.picPath;
                                        $('.shop-msg-list').append('<div class="shopNo" data-good-id="'+ parseJSON[i].goodsId +'" data-id="'+ parseJSON[i].id+'">\n' +
                                            '                    <div class="all-select shopNo-btn"><img src="../images/勾.png" alt="" class="btn-shop"></div>\n' +
                                            '                    <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/'+picPath+'" alt="">\n' +
                                            '                    <div class="shop-msg-self">\n' +
                                            '                        <strong>'+ content +'</strong>\n' +
                                            '                    </div>\n' +
                                            '                    <div class="shop-price">\n' +
                                            '                       <strong class="deal-money">$'+ parseJSON[i].allPrice +'</strong> \n' +
                                            '                    </div>\n' +
                                            '                </div>');
                                    }
                                });
                            }
                            //宝贝数量
                            $('.count-shop').text("共"+ parseJSON.length +"件宝贝")
                            //默认无值
                            $('.sum').text("$"+0);
                            //购物车选中
                            $('.shopNo-btn').click(function (e) {
                                e.stopPropagation();
                                $(this).parent('.shopNo').toggleClass('zhong-border');
                                $(this).toggleClass('zhong');
                                //选中
                                if($(this).is('.zhong')){
                                    let sum = $('.sum').text().toString();
                                    let money = sum.substring(1,sum.length);
                                    let goodMoney = $(this).siblings('.shop-price').find('.deal-money').text();
                                    var goodMoneyStr = goodMoney.toString();
                                    var goodMoneyVal = goodMoneyStr.substring(1,goodMoneyStr.length);
                                    let sumVal = parseFloat(money)+parseFloat(goodMoneyVal);

                                    $('.sum').text("$"+ sumVal);
                                }else{
                                    //取消
                                    let sum = $('.sum').text().toString();
                                    let money = sum.substring(1,sum.length);
                                    let goodMoney = $(this).siblings('.shop-price').find('.deal-money').text();
                                    var goodMoneyStr = goodMoney.toString();
                                    var goodMoneyVal = goodMoneyStr.substring(1,goodMoneyStr.length);
                                    let sumVal = parseFloat(money)-parseFloat(goodMoneyVal);
                                    $('.sum').text("$"+ sumVal);
                                }
                            });
                            //跳转
                            $('.shopNo').click(function(){
                                location.href = '/tmall/detail-msg';
                                window.localStorage.setItem('id', $(this).attr("data-good-id"));
                            });
                        }
                    });

                    shopCart.css("display", "block");
                }else{
                    //错误
                    alert("权限不足");
                    return;
                }
            }
        });

    });

//关闭购物车
    $('.close').click(function () {
        shopCart.css("display", "none");
    });


    let name = document.cookie;
    let value = name.substring(name.indexOf('=') + 1, name.length);

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

}//全选和取消
$('.my-btn').click(function () {
    $(this).toggleClass('zhong');
    let judge = $(this).is('.zhong');
    if(judge == true){
        let sum = 0.00;
        $('.shopNo-btn').addClass('zhong');
        let sumShop = $('.deal-money');
        for (let i = 0; i < sumShop.length; i++) {
            var strMoney = sumShop[i].innerText.toString();
            let money = strMoney.substring(1,strMoney.length);
            sum +=parseFloat(money);
            $('.sum').text('$'+sum);
        }
    }else{
        $('.shopNo-btn').removeClass('zhong');
        $('.sum').text('$0');
    }
});

//  购物车管理按钮


$('.manager-shop').click(function () {
    console.log($('.mylist'));
    let val = $('.opera').text();
    if(val == '结算'){
        $('.opera').text('删除');
        $('.manager-shop').text("完成");
        $('.sum').css("visibility","hidden");
        $('.mylist').css("visibility","hidden");
    }else{
        $('.opera').text('结算');
        $('.manager-shop').text("管理");
        $('.sum').css("visibility","visible");
        $('.mylist').css("visibility","visible");
    }
    $('.sum').text('$0');
    $('.shopNo').removeClass('zhong-border');
    $('.shopNo-btn').removeClass('zhong');

});


$('.opera').click(function () {
    let val = $('.opera').text();
    console.log(val);
    if(val == '删除'){
        let shops = $('.shopNo');
        console.log(shops);
        for (let i = 0; i < shops.length; i++) {

           if($(shops[i]).is('.zhong-border')){

               $.ajax({
                   url: '/deleteGoods?id=' +$(shops[i]).attr('data-id'),
                   type: 'delete',
                   success:function (msg) {
                        if(msg == 1){
                            alert('删除成功');
                            $(shops[i]).detach();
                            var message = $('.count-shop').text();
                            var numArr = message.match(/\d+/g);
                            $('.count-shop').text("共"+ (parseInt(numArr) - 1) +"件宝贝");
                            console.log(numArr);
                        }else{
                            alert('删除失败');
                        }
                   }
               })

           }

        }
    }
});

//搜索
$('.search-logo').click(function () {
    let text = $('.logo-search').val();
    let encode = encodeURI(text);
    console.log(encode)
    location.href = "/tmall/search-page?msg="+encode;
});

//关闭按钮
$('.close-info').click(function () {
    $('#validationServer01').removeClass('is-valid');
    $('#validationServer01').removeClass('is-invalid');
    $('#name-sign').removeClass('invalid-feedback');
    $('#name-sign').removeClass('valid-feedback');
    $('#name-sign').text('');

    $('#validationServer03').removeClass('is-valid');
    $('#validationServer03').removeClass('is-invalid');
    $('#email-sign').text('');
    $('#email-sign').removeClass('invalid-feedback');
    $('#email-sign').removeClass('valid-feedback');

    $('#validationServer02').removeClass('is-valid');
    $('#validationServer02').removeClass('is-invalid');
    $('#tele-sign').text('');
    $('#tele-sign').removeClass('invalid-feedback');
    $('#tele-sign').removeClass('valid-feedback');

    $('#validationServer04').removeClass('is-valid');
    $('#validationServer04').removeClass('is-invalid');
    $('#address-sign').text('');
    $('#address-sign').removeClass('invalid-feedback');
    $('#address-sign').removeClass('valid-feedback');
});


//保存按钮
$('.baocun').click(function () {
    let baocun = $('.baocun').text();
    if(baocun == '修改'){
        $('.address-delete').show();
        $('.address-tianjia').show();
        $('.baocun').text("保存");
        console.log($('.form-control'));
        $('.form-control').attr("disabled",false);
    }else{
        if($('#validationServer01').is('.is-invalid') || $('#validationServer03').is('.is-invalid') || $('#validationServer02').is('.is-invalid')){
            alert('保存失败');
            return ;
        }
        $.ajax({
            url:'/saveUserInfo',
            type:'post',
            data:{
                'name': $('#validationServer01').val(),
                'email': $('#validationServer03').val(),
                'tele': $('#validationServer02').val(),
                'address':$('#validationServer05').find("option:selected").text()
            },
            success:function (msg) {
                if(msg == 1){
                    $('.address-delete').hide();
                    $('.address-tianjia').hide();
                    $('.baocun').text("修改");
                    //$('#exampleModal').modal('hide');
                    $('.form-control').attr("disabled",true);
                    alert('保存成功');
                    document.cookie = "name='"+ $('#validationServer01').val(), +"';expires=Thu, 01 Jan 1970 00:00:00 GMT";
                    $('.myself-name').html("您好,尊贵的" + $('#validationServer01').val(),);
                }else{
                    alert("保存失败");
                }
            }
        });

    }
});
//查看个人信息
$('#clickself').click(function () {
    $('#validationServer05 *').remove();
    $.ajax({
       url:'/getPersonalInformation',
       type:'get',
       success:function (msg) {
           let parseJSON = $.parseJSON(msg);
           console.log(parseJSON)
           $('#validationServer01').attr("value",parseJSON.name);
           $('#validationServer02').attr("value",parseJSON.telephone);
           $('#validationServer03').attr("value",parseJSON.email)
            $.ajax({
                url:'/getAddressAll',
                type:'get',
                success:function (msg) {
                    let parseJSON1 = $.parseJSON(msg);
                    for (let i = 0; i < parseJSON1.length; i++) {
                        console.log(parseJSON1[i]);
                        $('#validationServer05').append('<option selected value="" >'+parseJSON1[i].address+'</option>');
                    }
                }
            });
       }
    });
});
//验证账户
$('#validationServer01').keyup(function () {
    let name = $('#validationServer01').val();
    if(name != ''){
        $('#validationServer01').addClass('is-valid');
        $('#validationServer01').removeClass('is-invalid');
        $('#name-sign').text('输入正确');
        $('#name-sign').addClass('valid-feedback');
        $('#name-sign').removeClass('invalid-feedback');
    }else{
        $('#validationServer01').removeClass('is-valid');
        $('#validationServer01').addClass('is-invalid');
        $('#name-sign').text('请输入正确的姓名格式');
        $('#name-sign').addClass('invalid-feedback');
        $('#name-sign').removeClass('valid-feedback');
    }
});
//验证邮箱
$('#validationServer03').keyup(function () {
    var myreg = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    let email = $('#validationServer03').val();

    if(!myreg.test(email)){
        $('#validationServer03').removeClass('is-valid');
        $('#validationServer03').addClass('is-invalid');
        $('#email-sign').text('请输入正确的邮箱格式');
        $('#email-sign').addClass('invalid-feedback');
        $('#email-sign').removeClass('valid-feedback');
    }else{
        $('#validationServer03').addClass('is-valid');
        $('#validationServer03').removeClass('is-invalid');
        $('#email-sign').text('输入正确');
        $('#email-sign').removeClass('invalid-feedback');
        $('#email-sign').addClass('valid-feedback');
    }
});
//验证手机号
$('#validationServer02').keyup(function () {
    var myreg = /(1[3-9]\d{9}$)/;
    let email = $('#validationServer02').val();
    if(!myreg.test(email)){
        $('#validationServer02').removeClass('is-valid');
        $('#validationServer02').addClass('is-invalid');
        $('#tele-sign').text('请输入正确手机格式');
        $('#tele-sign').addClass('invalid-feedback');
        $('#tele-sign').removeClass('valid-feedback');
    }else{
        $('#validationServer02').addClass('is-valid');
        $('#validationServer02').removeClass('is-invalid');
        $('#tele-sign').text('输入正确');
        $('#tele-sign').removeClass('invalid-feedback');
        $('#tele-sign').addClass('valid-feedback');
    }
})

//添加地址
$('.address-tianjia').click(function () {
    var address = $('#validationServer04').val();
    if(address == ''){
        $('#validationServer04').removeClass('is-valid');
        $('#validationServer04').addClass('is-invalid');
        $('#address-sign').text('添加失败');
        $('#address-sign').addClass('invalid-feedback');
        $('#address-sign').removeClass('valid-feedback');
        return ;
    }
    $.ajax({
        url:'/insertAddress',
        type:'post',
        data:{
          'address':address
        },
        success:function (msg) {
            if(msg == 1){
                $('#validationServer04').addClass('is-valid');
                $('#validationServer04').removeClass('is-invalid');
                $('#address-sign').text('添加成功');
                $('#address-sign').removeClass('invalid-feedback');
                $('#address-sign').addClass('valid-feedback');
                $('#validationServer05').append('<option selected value="" >'+address+'</option>');
                $('#validationServer04').val("");
            }else{
                $('#validationServer04').removeClass('is-valid');
                $('#validationServer04').addClass('is-invalid');
                $('#address-sign').text('添加失败');
                $('#address-sign').addClass('invalid-feedback');
                $('#address-sign').removeClass('valid-feedback');
            }
        }
    });
});

//删除地址
$('.address-delete').click(function () {
    console.log($('#validationServer05').find("option:selected").text());
});