function cartDelete(event) {
    event.preventDefault();
    alert('xin chao');
    // let urlCart = $(this).data('url');

    // $.ajax({
    //     type: "GET",
    //     url: urlCart,
    //     dataType: 'json',
    //     success: function(data) {
    //         if (data.code === 200) {
    //             Swal.fire(
    //                 'Thành công!',
    //                 'Sản phẩm đã được thêm vào giỏ hàng!!',
    //                 'success'
    //             )
    //         }
    //     },
    //     error: function() {

    //     }
    // });
}
$(function() {
    $('.cart_delete').on('click', cartDelete);
});