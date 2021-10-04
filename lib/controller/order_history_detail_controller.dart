import '../model/order_history/order_history.dart';
import '../model/order_detail/order_detail.dart';
import '../model/order_detail/order_detail_response.dart';
import '../model/order_detail/order_summary.dart';
import 'package:get/get.dart';

class OrderHistoryDetailController extends GetxController {
  OrderHistoryDetailController();

  final _orderDetailRx = Rxn<OrderDetailResponse?>();
  OrderDetailResponse? get orderDetail => _orderDetailRx.value;
  OrderHistory? orderHistory;

  @override
  void onInit() {
    super.onInit();
    orderHistory = Get.arguments;
    _orderHistoryDetailFetch();
  }

  _orderHistoryDetailFetch() {
    var orderDetailResponse = OrderDetailResponse(
        orderDetail: OrderDetail(
            orderAcceptName: 'Admin',
            orderAcceptDateTime: '4-10-2021 11:00 AM',
            orderRequestDateTime: '4-10-2021 11:00 AM',
            orderPickupDateTime: '4-10-2021 11:00 AM'),
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
