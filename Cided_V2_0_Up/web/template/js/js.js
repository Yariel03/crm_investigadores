/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function login()
{
 var setDatos={
     cedula:$('#txtCedula').val(),
     clave:$('#txtPass').val()
 };
    $.ajax({
        type: 'POST',
        datatype: 'json',
        url: "http://localhost:8080/CidedWs_V2_0_Up/login/login.jsp",
        data: {getDatos: JSON.stringify(setDatos)},
        beforeSend: function () {
            $('#btnLogin').html("Loading...");
        }
    }).done(function (html) {
        html = JSON.parse(html);
        if (html.resultado==="true") {
            $('#mensaje').removeClass('text-danger');
            location.href='../../template/plantilla/modelo.jsp?datos='+window.btoa(JSON.stringify(html));
        } else {
            $('#mensaje').addClass('text-danger');
            $('#mensaje').html("error user or password"+html.rol);
        }
        console.log("exito :" + html.resultado);
    }).fail(function (html) {
        $('#mensaje').addClass('text-danger');
        $('#mensaje').html("error in server:");
        console.log("error en el servidor " + html.responseText);

    }).always(function () {
         $('#btnLogin').html("Login");
        console.log("completado ");

    });
}