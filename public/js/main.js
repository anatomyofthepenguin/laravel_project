$("#orderCreate").click(function(e){
    $("#errorMessage").hide();
    $("#successMessage").hide();
    e.preventDefault();

    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    var name = $("#userName").val();
    var email = $("#userEmail").val();
    var price = $("#productPrice").data('price');
    var productID = $("#productId").val();

    $.ajax({
        type:'POST',
        url:'/orders/create',
        data:{name:name, email:email, _token:CSRF_TOKEN, price:price, product_id: productID},

        success: function (data) {
            if (data.error) {
                $("#errorMessage").text('Поля заполнены не верно!').show()
            } else {
                $("#successMessage").show();
            }
        },
        error: function(data){
            console.log(data);
            $("#errorMessage").text('Произошла ошибка.').show()
        }
    });

});