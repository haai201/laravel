function cartUpdate(event) {
    event.preventDefault();
    let urlUpdateCart = $('.update_cart_url ').data('url');
    let id = $(this).data('id');
    let quantity = $(this).parents('tr').find('input.quantity').val();
    $.ajax({
        type: "GET",
        url: urlUpdateCart,
        data: { id: id, quantity: quantity },
        success: function(data) {
            if (data.code === 200) {
                $('.cart_warapper').html(data.cart_component);
                Swal.fire(
                    'Thành công!',
                    'Sản phẩm đã được cập nhật!!',
                    'success'
                )
            }
        },
        error: function() {

        }
    });
}

function cartDelete(event) {
    event.preventDefault();
    let urlDelete = $('.cart').data('url');
    let id = $(this).data('id');
    $.ajax({
        type: "GET",
        url: urlDelete,
        data: { id: id },
        success: function(data) {
            if (data.code === 200) {
                Swal.fire(
                    'Thành công!',
                    'Đã xóa thành công',
                    'success'
                )
            }
        },
        error: function() {

        }
    });
}
$(function() {
    $(document).on('click', '.cart_update', cartUpdate);
    $(document).on('click', '.cart_delete', cartDelete);
})