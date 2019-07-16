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
            if (html.rol==="1") {
                location.href='../../roles/director';
            }
        } else {
            $('#mensaje').addClass('text-danger');
            $('#mensaje').html("error user or password");
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

// alert(setDatos)

    
}