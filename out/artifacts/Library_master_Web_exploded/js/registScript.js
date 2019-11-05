function checkPwd() {

    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var pwd = document.getElementById("passwd").value;
    var rpwd = document.getElementById("rePasswd").value;

    if (username == ""){
        document.getElementById("checkinfo").innerHTML = "用户名不能为空";
    }
    if (email == ""){
        document.getElementById("checkinfo").innerHTML = "邮箱不能为空";
    }
    if (username == "" && email == "") {
        document.getElementById("checkinfo").innerHTML = "用户名和邮箱不能为空";
    }
    if (pwd != rpwd) {
        document.getElementById("checkinfo").innerHTML = "两次输入的密码不一致";
    }

}

