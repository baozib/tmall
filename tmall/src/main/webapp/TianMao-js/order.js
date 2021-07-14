
//默认
$.ajax({
    url:'/getUserOrder?type=-1',
    type:'get',
    success:function (msg) {
        let parseJSON = $.parseJSON(msg);
        for (let i = 0; i < parseJSON.length; i++) {
            //初始化
            let createTime = parseJSON[i].createTime.year +"-"+ parseJSON[i].createTime.month +"-"+ parseJSON[i].createTime.day;
            let address = parseJSON[i].addressId;
            let id = parseJSON[i].id;
            let orderNo = parseJSON[i].orderNo;
            let price = parseJSON[i].price;
            let status = parseJSON[i].status;
            let goodId = parseJSON[i].goodsId;
            //状态
            if(status == 5){
                status = '待付款';
            }else if(status == 4){
                status = '待发货';
            }else if(status == 3){
                status = '待收货';
            }else if(status == 2){
                status = '待评价';
            }
            $.ajax({
                url:'/getMessage?id='+goodId,
                this:'get',
                success:function (msg) {
                    let parseJSON1 = $.parseJSON(msg);
                    let picPath = parseJSON1.picPath;
                    let detailMsg = parseJSON1.detailMsg;
                    $('#content').append('<table class="myOrder_itemContent" sit="evaluation">\n' +
                        '                <tbody>\n' +
                        '                    <tr class="myOrder_itemTitle">\n' +
                        '                        <td colspan="2" class="myOrder_desc">\n' +
                        '                            <b>'+ createTime +'</b>\n' +
                        '                            <span>订单号: '+ orderNo +'</span>\n' +
                        '                        </td>\n' +
                        '                        <td colspan="2">\n' +
                        '                            <img width="13px" src="http://how2j.cn/tmall/img/site/orderItemTmall.png">天猫商场\n' +
                        '                        </td>\n' +
                        '                        <td colspan="1" class="wangwanglink">\n' +
                        '                            <a href="#nowhere" class="wangwanglink">\n' +
                        '                               <div class="wangwanglink"></div>\n' +
                        '                            </a>\n' +
                        '                        </td>\n' +
                        '                        <td class="orderItemDeleteTD">\n' +
                        '                            <a href="#nowhere" oid="946" class="deleteOrderLink">\n' +
                        '                                <span class="orderListItemDelete glyphicon glyphicon-trash mydingyi"  data-id="'+id+'" ></span>\n' +
                        '                            </a>\n' +
                        '                        </td>\n' +
                        '                    </tr>\n' +
                        '                    <tr class="myOrder_itemTitle_Content">\n' +
                        '                        <td class="myOrder_pic">\n' +
                        '                            <img src="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/'+picPath+'" width="80px" height="80px">\n' +
                        '                        </td>\n' +
                        '                        <td class="myOrder_desc">\n' +
                        '                            <div class="myOrder_ItemProductLinkOuterDiv">\n' +
                        '                                <a href="#" class="content">'+detailMsg+'</a>\n' +
                        '                                <div class="myOrder_ItemProductLinkInnerDiv">\n' +
                        '                                    <img title="支持信用卡支付" src="http://how2j.cn/tmall/img/site/creditcard.png">\n' +
                        '                                    <img title="消费者保障服务,承诺7天退货" src="http://how2j.cn/tmall/img/site/7day.png">\n' +
                        '                                    <img title="消费者保障服务,承诺如实描述" src="http://how2j.cn/tmall/img/site/promise.png">                    \n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '                        </td>\n' +
                        '                        <td class="myOrder_price">\n' +
                        '                            <p>$' + price + '</p>\n' +
                        '                        </td>\n' +
                        '                        <td class="myOrder_amount">\n' +
                        '                            <div>\n' +
                        '                                1\n' +
                        '                            </div>\n' +
                        '                        </td>\n' +
                        '                        <td class="myOrder_sum">\n' +
                        '                            <div class="orderListItemProductRealPrice">\n' +
                        '                                $ '+price+'\n' +
                        '                            </div>\n' +
                        '                            <div class="orderListItemPriceWithTransport">\n' +
                        '                                (含运费：￥0.00)\n' +
                        '                            </div>\n' +
                        '                        </td>\n' +
                        '                        <td class="myOrder_confirm" sit="evaluation">\n' +
                        '                            '+status+'\n' +
                        '                        </td>\n' +
                        '                    </tr>\n' +
                        '                </tbody>\n' +
                        '            </table>');
                    $('.mydingyi').unbind('click');
                    $('.mydingyi').click(function () {
                        $(this).parent().parent().parent().parent().parent().detach();
                        let id = $(this).attr("data-id");
                        $.ajax({
                            url:'/deleteOrder?id=' + id,
                            type:'delete',
                            success:function (msg) {
                                if(msg == 1){
                                    alert('删除成功')
                                }else{
                                    alert('删除失败')
                                }
                            }
                        });
                    });
                }
            });

        }

    }
});
//所有商品红色
$('#all').css("color","red");