function get_adv(div_id){
    $.ajax({
        method: "GET",
        url: "http://localhost:3000/api/get_adv/6,1"
    })
        .done(function( msg ) {
            alert(msg);
            $("#"+div_id).html(msg);
        });
}