const container = document.querySelector('.container');
const move = document.querySelector('.move');
const bigImg = document.querySelector('.move img');

//移动放大图片
container.addEventListener('mousemove',function(e){
    let x = e.clientX;
    let l  = container.offsetLeft;
    let moveLeft = x -l - move.offsetWidth  / 2 - 290;
    if(moveLeft <= 0 ){
        moveLeft = 0;
    }

    let maxLeft = container.offsetWidth - move.offsetWidth -30;
    if(moveLeft >= maxLeft){
        moveLeft = maxLeft;
    }

    move.style.left = moveLeft + 'px';

    let bigImgLeft= (moveLeft + move.offsetWidth / 2) / container.offsetWidth * bigImg.offsetWidth -move.offsetWidth / 2;
    bigImg.style.left = -bigImgLeft + 'px';




    let y = e.clientY;
    let t  = container.offsetTop;
    let moveTop = y - t - move.offsetHeight  / 2 - 230;
    if(moveTop <= 0 ){
        moveTop = 0;
    }

    let maxTop = container.offsetHeight - move.offsetHeight;
    if(moveTop >= maxTop){
        moveTop = maxTop;
    }

    move.style.top = moveTop + 'px';

    let bigImgTop = (moveTop + move.offsetHeight / 2) / container.offsetHeight * bigImg.offsetHeight -move.offsetHeight / 2;
    bigImg.style.top = -bigImgTop + 'px';
});

//显示
container.addEventListener('mouseover',function(){
    move.classList.remove('hidden');
});
//隐藏
container.addEventListener('mouseout',function(){
    move.classList.add('hidden');
});
//猜你喜欢
let id = window.localStorage.getItem('id');
if(id != undefined ){
    $.ajax({
        url:  '/getMessage?id='+id,
        type: 'get',
        success: function (msg) {
            let parseJSON = $.parseJSON(msg);
            let type = parseJSON.type;

            $.ajax({
                url:'/getGoodsListReType?limit=3&type='+type,
                type:'get',
                success:function (msg) {
                    let parseJSON1 = $.parseJSON(msg);
                    console.log(parseJSON1);
                    $('.font-one').attr("src","https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/"+parseJSON1[0].picPath);
                    $('.font-two').attr("src","https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/"+parseJSON1[1].picPath);
                    $('.font-three').attr("src","https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/"+parseJSON1[2].picPath);
                }
            });
            //详细信息
            $('.container>img').attr("src","https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/" + parseJSON.picPath);
            $('.move>img').attr("src","https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/" + parseJSON.picPath);
            $('.content-msg').text(parseJSON.detailMsg);
            $('.price-content').text("$"+parseJSON.price);
            $('.msg-one strong').html(parseJSON.salesCount);
            $('.msg-two strong').html(parseJSON.commCount);
            $('.address-msg strong').html(parseJSON.sendAddress);
        },

    });
}
let name = document.cookie;
let value = name.substring(name.indexOf('=') + 1, name.length);
//判断用户是否登入了
if (value != undefined  && value != null) {
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

//加入购物车
$('.join-shop').click(function () {

    let price = $('.price-content').text();
    let priceVal = price.substring(1,price.length);

    $.ajax({
        url: '/insertShopCart',
        type:'post',
        data:{
            "id": id,
            "price": priceVal
        },
        success:function (msg) {
            if(msg == '1'){
                alert('添加成功');
            }else {
                alert('添加失败');;
            }
        }
    });
});

//立刻支付
$('.once-buy').click(function () {
    var price = $('.price-content').text();
    var content = $('.content-msg').text();
    var priceVal = price.substring(1,price.length);
    var timestamp = Date.parse(new Date());

    console.log(typeof timestamp);
    console.log(timestamp);
    location.href = "http://localhost:8888/Alipay/PayPage?Name="+ content+"&Money="+priceVal + "S" + id;
});

$('.index').click(function () {
    location.href = "/tmall/index";
});