import 'package:food_cafe_delivery/model/dispatch/dispatch.dart';

import '../model/order_detail/order_detail.dart';
import '../model/order_detail/order_detail_response.dart';
import '../model/order_detail/order_summary.dart';
import 'package:get/get.dart';

class OrderDetailController extends GetxController {
  OrderDetailController();

  final _orderDetailRx = Rxn<OrderDetailResponse?>();
  OrderDetailResponse? get orderDetail => _orderDetailRx.value;
  Dispatch? dispatch;

  @override
  void onInit() {
    super.onInit();
    dispatch = Get.arguments;
    _orderDetailFetch();
  }

  _orderDetailFetch() {
    var orderDetailResponse = OrderDetailResponse(
        orderDetail: OrderDetail(
          orderAcceptName: 'Admin',
          orderAcceptDateTime: '4-10-2021 11:00 AM',
          orderRequestDateTime: '4-10-2021 11:00 AM',
        ),
        orderSummaryList: [
          OrderSummary(
              foodName: 'Chicken birtani',
              isVegNonVeg: 2,
              orderType: 1,
              quantity: 1,
              price: 100.00),
          OrderSummary(
              foodName: 'Chicken birtani',
              isVegNonVeg: 2,
              orderType: 1,
              quantity: 1,
              price: 100.00),
          OrderSummary(
              foodName: 'Chicken birtani',
              isVegNonVeg: 2,
              orderType: 1,
              quantity: 1,
              price: 100.00),
          OrderSummary(
              foodName: 'Chicken birtani',
              isVegNonVeg: 2,
              orderType: 1,
              quantity: 1,
              price: 100.00)
        ]);
    _orderDetailRx.value = orderDetailResponse;
  }
}
