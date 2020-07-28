function login() {

    var a=passNull();
    var b=accountNull();
    if (a&&b) {

    var path = $("#path").val();
    console.log(path);
    var account = $("#account").val();
    var pass = $("#password").val();
    var user = {"userAccount": account, "userPassword": pass};
    var jsonuser = JSON.stringify(user);
    $.ajax({
        url: path + "/userControl/login",
        async: true,
        type: "post",
        data: "user=" + jsonuser,
        dataType: "text",
        beforeSend: function () {
            $("#sub").attr("disabled", true);

        },
        success: function (msg) {
            console.log("msg="+msg);
            $("#sub").attr("disabled", false);
            if (msg === "success") {
                alert("登录成功");
                location.href = path+"/userControl/main";
            }else{
                alert("登录失败");
            }

        },
        error: function () {

            alert("发送失败")
        }

    })
}
}

function accountNull() {

    var account=$("#account").val();


    if(account.length<1){
        $("#sp1").text("账号不能为空");
        return false;
    }else{
        $("#sp1").text("");
        return true;
    }


}
function passNull() {
    var password=$("#password").val();
    if(password.length<1){
        $("#sp2").text("密码不能为空");
        return false;
    }else{
        $("#sp2").text("");
        return true;
    }
}


