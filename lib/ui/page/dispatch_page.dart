import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/routes.dart';
import '../../controller/controller.dart';
import '../../model/dispatch/dispatch.dart';
import '../../resource/colors.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import '../widget/dispatch_item.dart';
import '../widget/text_field_search.dart';

class DispatchPage extends GetView<DispatchController> {
  const DispatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: appBarElevation,
            title: Text(dispatchTitle, style: appBarTitleStyle)),
        body: Column(children: [
          TextFieldSearch(
              textEditingController: controller.searchController,
              onChanged: controller.searchDispatchOrder),
          Expanded(
              child: Obx(() => ListView(children: [
                ...controller.dispatchList!
                    .map((Dispatch? dispatch) => DispatchItem(
                    dispatch: dispatch!,
                    dispatchClick: () {
                      Get.toNamed(orderDetailRoute,
                          arguments: dispatch);
                    }))
                    .toList()
              ])))
        ]));
  }
}
