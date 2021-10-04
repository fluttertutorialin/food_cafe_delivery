import 'package:flutter/material.dart';
import '../../controller/controller.dart';
import '../../model/order_history/order_history.dart';
import '../../resource/colors.dart';
import '../../resource/routes.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import '../widget/order_history_item.dart';
import 'package:get/get.dart';

class OrderHistoryPage extends GetView<OrderHistoryController> {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: appBarElevation,
            title: Text(orderHistoryTitle, style: appBarTitleStyle)),
        body: Obx(() => ListView(children: [
              ...controller.dispatchList!
                  .map((OrderHistory? orderHistory) => OrderHistoryItem(
                      orderHistory: orderHistory!,
                      orderHistoryClick: () {
                        Get.toNamed(orderHistoryDetailRoute,
                            arguments: orderHistory);
                      }))
                  .toList()
            ])));
  }
}
