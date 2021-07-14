
let ale = $('.alert');
let username = $('#login-user');
let password = $('#login-pass');
let againPassword = $('#login-pass-again');
let email = $('#email');
let code = $('#code');


let usernameVal = username.val();
let passwordVal = password.val();
let againPasswordVal = againPassword.val();
let emailVal = email.val();
let codeVal = code.val();

var judge = false;
var pleaseCode;

ale.hide();

const SUBMIT = document.querySelector('#submit');

//设置纸飞机动画
const submitForm = ($event)=>{
    if(!$event.target.classList.contains('active')){
        $event.target.classList.add('active');
        setTimeout(()=>{
            $event.target.classList.remove('active');

        },1000)
       
    }
}
SUBMIT.addEventListener('click',submitForm);

//确认按钮
$('.cartain').click(function(){


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
    if(againPassword.val().length == 0){
        ale.text("请输入确认密码");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }
    if(email.val().length == 0){
        ale.text("请输入邮箱");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }
    if(code.val().length == 0){
        ale.text("请输入验证码");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }

    if (againPassword.val() != password.val()) {
        ale.text("两次密码不一致");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return;
    }

    if(judge == false){
        ale.text("请发送邮箱");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return;
    }

    if(code.val() != pleaseCode){
        ale.text("验证码错误");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return;
    }

    $.ajax({
        url:  '/insertUser',
        type: 'post',
        contentType : 'application/json',
        data: JSON.stringify({
            "username": username.val(),
            "password": password.val(),
            "email": email.val()
        }),
        success: function (msg) {
            let json=$.parseJSON(msg);
            let status = json.status;
            console.log(status);
            if(status == 0){
                ale.text("信息重复,");
                ale.show();
                window.setTimeout(function(){
                    ale.fadeOut(800);
                },500);
            }else{
                ale.text("注册成功");
                ale.show();
                window.setTimeout(function(){
                    ale.fadeOut(800);
                },500);
            }
        },
    });

});

//获取邮箱验证码
$('#submit img').click(function(){
    if(email.val().length == 0){
        ale.text("请输入邮箱");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        return ;
    }else{
        ale.text("发送成功");
        ale.show();
        window.setTimeout(function(){
            ale.fadeOut(800);
        },500);
        $('#submit').click();
    }
    console.log(email.val())
    $.ajax({
        url:  '/sendEmail',
        type: 'get',
        data: {"userEmail":email.val()}	,
        success: function (msg) {
            judge = true;
            pleaseCode = msg;
        },
    });

});



