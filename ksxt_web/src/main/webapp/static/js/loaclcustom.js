var x = document.cookie;
$("#stu_name1").text(x);


    function logout() {
        var data = {};
        //配置的登出的url，
        $.get('../logout', data, function (data) {
            if (data.code == 200) {
                alert('退出成功');
                window.location.href = "BeforeLogin.html";
            }
        });
    }
