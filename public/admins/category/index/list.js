function actionDelete(event) {
    event.preventDefault();
    let urlRequest = $(this).data('url');
    let that = $(this);
    Swal.fire({
        title: 'Bạn chắc chắn muốn Danh mục sản phẩm này chứ?',
        // text: "Thao tác không thể hoàn tác!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Xác nhận'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: 'GET',
                url: urlRequest,
                success: function(data) {
                    if (data.code === 200) {
                        that.parent().parent().remove();
                        Swal.fire(
                            'Thành công!',
                            'Đã xóa thành công.',
                            'success'
                        )
                    }

                },
                error: function() { return }
            })

        }
    })
}
$(document).on('click', '.action_delete', actionDelete);