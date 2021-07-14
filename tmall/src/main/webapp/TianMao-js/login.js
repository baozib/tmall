let ale = $(".alert");




//登入逻辑
$('.cartain').click(function(){
    let username = $('#login-user');
    let password = $('#login-pass');
    if(username.val().length == 0){
        ale.text("请输入账户");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }
    if(password.val().length == 0){
        ale.text("请输入密码");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }

    console.log(username.val());
    console.log(password.val());

    $.ajax({
        url:  '/tmall/login-logic-process',
        type: 'post',
        data: {"username":username.val(),
            "password":password.val()}	,
        success: function (msg) {
            console.log(msg);
            console.log(typeof msg);

            let jsonMsg = $.parseJSON(msg);
            let status = jsonMsg.status;

            console.log(status)

            if(status == -1){
                ale.text("账户密码错误");
                ale.show();
                window.setTimeout(function(){
                    ale.fadeOut(800);
                },500);
                return ;
            }else if(status == 1){
                ale.text("登入成功");
                ale.show();
                window.setTimeout(function(){
                    ale.fadeOut(800);
                },500);
                console.log(jsonMsg.name)
                location.href = "/tmall/index";
                document.cookie = "name="+jsonMsg.name + ";";
                //window.localStorage.setItem('name',jsonMsg.name);
            }
        },
    });

});