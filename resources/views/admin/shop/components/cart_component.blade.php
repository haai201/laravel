<div class="container">
        <a href="{{route('shop.index')}}" style="color:#E0A800"><i class="fas fa-arrow-left"> Quay lại</i></a>
        <div class="col-md-12 buy">
            <a href="{{route('shop.index')}}" class="btn btn-success">Thêm sản phẩm mới</a>
        </div>
        <br>
<div class="cart" data-url="{{route('shop.deleteCart')}}">
            <div class="row">
            <table class="table table-hover update_cart_url" data-url="{{route('shop.updateCart')}}">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Mã SP</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Đơn Giá</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Thành tiền</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                    $total =0;
                    @endphp
                    @foreach ($carts as $id=> $cart)
                    @php
                    $total +=$cart['price'] * $cart['quantity'];
                    @endphp
                    <tr>
                        <th scope="row">{{$id}}</th>
                        <th scope="row">{{$cart['name']}}</th>
                        <td class="fst-italic">{{number_format($cart['price'])}} đ</td>
                        <td>
                            <input type="number"
                                value="{{$cart['quantity']}}" min="1" class="quantity price">
                        </td>
                        <td class="fw-bold">{{number_format($cart['price'] * $cart['quantity'])}} đ</td>
                        <td>
                            <a href="" data-id="{{$id}}" class="btn btn-primary cart_update">Cập nhật</a>
                            <a href="" data-id="{{$id}}" class="btn btn-danger cart_delete">Xóa</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div><br><br>
        <div class="col-md-12">
            <h2 style="color:red; text-align:right;" class="fw-bold"> Tổng tiền: {{number_format($total)}} đ
            </h2>
        </div>
        <br>
        <div class="col-md-12 buy">
            <button type="button" class="btn btn-warning fw-bold buy">Tiến hành đặt hàng</button>
        </div>