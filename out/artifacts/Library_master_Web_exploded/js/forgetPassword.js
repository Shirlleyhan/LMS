function sendmail() {

    var usernameinput = document.getElementById("usernameinput").value;
    var mail = document.getElementById("mail").value;

    if (usernameinput == ""){
        document.getElementById("checkinfo").innerHTML = "用户名不能为空";
        return false;
    }
    if (mail == ""){
        document.getElementById("checkinfo").innerHTML = "邮箱不能为空";
        return false;
    }
    if (usernameinput == "" && passwordinput == "") {
        document.getElementById("checkinfo").innerHTML = "用户名和邮箱不能为空";
        return false;
    }
    document.getElementById("form").submit();
    return true;
}

