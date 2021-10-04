import 'order_detail.dart';
import 'order_summary.dart';

class OrderDetailResponse {
  List<OrderSummary?>? orderSummaryList;
  OrderDetail? orderDetail;

  OrderDetailResponse({this.orderSummaryList, this.orderDetail});
}
