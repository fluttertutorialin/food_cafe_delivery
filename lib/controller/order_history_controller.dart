import '../model/order_history/order_history.dart';
import '../model/order_history/order_history_response.dart';
import 'package:get/get.dart';

class OrderHistoryController extends GetxController {
  OrderHistoryController();

  final _orderHistoryRxList = Rxn<List<OrderHistory?>>();
  List<OrderHistory?>? get dispatchList => _orderHistoryRxList.value;

  @override
  void onInit() {
    super.onInit();
    _orderHistoryFetch();
  }

  _orderHistoryFetch() {
    var orderHistoryResponse = OrderHistoryResponse(orderHistoryList: [
      OrderHistory(
          uniqueId: '1',
          orderId: '100001',
          orderStatus: 'Cancel',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      OrderHistory(
          uniqueId: '1',
          orderId: '100001',
          orderStatus: 'Dispatched',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      OrderHistory(
          uniqueId: '1',
          orderId: '100001',
          orderStatus: 'Dispatched',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      OrderHistory(
          uniqueId: '1',
          orderId: '100001',
          orderStatus: 'Dispatched',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10)
    ]);

    _orderHistoryRxList.value = orderHistoryResponse.orderHistoryList!;
  }
}
