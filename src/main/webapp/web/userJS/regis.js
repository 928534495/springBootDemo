function uVerifi() {

    console.log($("#account").val());
    var uAccount=$("#account").val();
    if(uAccount.length>0){


        var path=$("#path").val();
        $.ajax({
            url:path+"/userControl/uVerification",
            async:true,
            type:"post",
            data:"uAccount="+uAccount,
            dataType:"Text",
            success:function (msg) {

                console.log(msg);
                if(msg==="ok"){

                    // alert("账号可以使用")
                    $("#sp1").text("账号可以使用");
                    console.log( $("#sp1").text());
                }else if(msg==="no"){
                    // alert("账号已被注册");
                    $("#sp1").text("账号已被注册");

                }
            }
        })
    }else {
        $("#sp1").text("账号不能为空")
    }
}

function regis() {

    console.log( $("#sp1").text());
    var uV=$("#sp1").text();
    var a=phoneNull();//拿到方法的返回值
//定义的名称不能跟方法名一致，不然拿不到返回值
    var b=educationNull();
    var c=occupationNull();
    var d=passNull();
    var e= npassNull();
    if(a&&b&&c&&d&&e&&uV==="账号可以使用"){

        // var uName=$("#uName").val();
        var uAccout=$("#account").val();
        var uPassword=$("#password").val();
        var education=$("#education").val();
        var occupation=$("#occupation").val();
        var phone=$("#phone").val();
        var email=$("#email").val();
        var uSex=$("input[name='uSex']:checked").val();
        var path=$("#path").val();
        var  admin={"user_password":uPassword,"user_account":uAccout,"user_education":education,"user_occupation":occupation,"user_phone":phone
            ,"user_sex":uSex,"user_email":email}  ;
        var jsonadmin=JSON.stringify(admin);
        $.ajax({
            url:path+"/userControl/regis",
            async:true,
            type:"post",
            data:"admin="+jsonadmin,
            dataType:"text",

            success:function (msg) {

                if(msg==="success"){
                    alert("注册成功");
                    // location.href=path+"/userServlet?methodName=mainPage"

                }else if(msg==="fail"){
                    alert("注册失败");


                }
            }
        });
    }else{
        alert("表单填写不符合要求")
    }
}

function accountNull() {
    var uname=$("#account").val();
//用户名的规则： 昵称的长度为1-15，包含任意的字母、数字、中文，不可以使用其他符号
    var reg = /^([\u4e00-\u9fa5]|[a-zA-Z0-9]){1,15}$/i;
    if(reg.test(uname)){
        //符合规则
        $("#sp2").text("符合要求");
        return true;
    }else{
        $("#sp2").text("昵称的长度为1-15，包含任意的字母、数字、中文，不可以使用其他符号");
        return false;
    }

}
function phoneNull() {

    var uPhone=$("#phone").val();
    //电话的规则：1开头，一共11位数字
    var reg=/^1[0-9]{10}$/i;
    if(reg.test(uPhone)){
        $("#sp7").text("符合要求");
        return true;
    }else{
        $("#sp7").text("1开头，一共11位数字");
        return false;
    }
}
// function noNull3() {
//     var uAge=$("#uAge").val();
//     var reg=/[0-9]{3}$/i;
//     if(reg.test(uPhone)){
//         $("#sp4").text("符合要求");
//         return true;
//     }else{
//         $("#sp4").text("三位数内");
//         return false;
//     }
// }
function educationNull() {
    var education=$("#education").val();
    var reg=/^(?![a-zA-Z\d]+$)[\u4e00-\u9fa5\da-zA-Z]+$/;
    if(reg.test(education)){
        $("#sp5").text("符合要求");
        return true;
    }else{
        $("#sp5").text("中文英文和数字，不能全是英文和数字，至少要有中文");
        return false;
    }

}
function occupationNull() {
    var occupation=$("#occupation").val();
    var reg=/^(?![a-zA-Z\d]+$)[\u4e00-\u9fa5\da-zA-Z]+$/;
    if(reg.test(occupation)){
        $("#sp6").text("符合要求");
        return true;
    }else{
        $("#sp6").text("中文英文和数字，不能全是英文和数字，至少要有中文");
        return false;
    }

}
function emailNull() {

}

function passNull() {
    var uPassword=$("#password").val();
    //密码的规则： 6-16，包含任意的字母、数字，不可以使用其他符号
    var reg = /^([a-zA-Z0-9]){6,16}$/i;
    if(reg.test(uPassword)){
        $("#sp2").text("符合要求");
        return true;
    }else{
        $("#sp2").text("6-16，包含任意的字母、数字，不可以使用其他符号");
        return false;
    }
}
function npassNull() {

    var uPassword=$("#uPassword").val();
    var uPassword2=$("#nPassword").val();
    var reg = /^([a-zA-Z0-9]){6,16}$/i;
    if(reg.test(uPassword2)){
        if(uPassword===uPassword2){
            $("#sp3").text("符合要求");
            return true;
        }else {
            $("#sp3").text("密码输入不一样");
            return false;
        }

    }else{
        $("#sp3").text("6-16，包含任意的字母、数字，不可以使用其他符号");
        return false;
    }
}