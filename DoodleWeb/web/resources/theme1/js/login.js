/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    $("#password-re").keyup(function () {
        var textlent = $("#password1").val();
        if ($("#password-re").val() === textlent) {
            $("#repass-alert").removeClass("alert alert-danger");
            $("#repass-alert").addClass("alert alert-success");
            $("#repass-alert").text("Mật khẩu nhập lại khớp");
        } else {
            $("#repass-alert").removeClass("alert alert-success");
            $("#repass-alert").addClass("alert alert-danger");
            $("#repass-alert").text("Mật khẩu nhập lại không khớp");
        }
    });

});
