import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';
import '../../resource/colors.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import '../widget/pick_up_item.dart';
import '../../model/pick_up/pick_up.dart';
import '../widget/text_field_search.dart';

class PickUpPage extends GetView<PickUpController> {
  const PickUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: appBarElevation,
            title: Text(pickUpTitle, style: appBarTitleStyle)),
        body: Column(children: [
          TextFieldSearch(
              textEditingController: controller.searchController,
              onChanged: controller.searchPendingOrder),
          Expanded(child: Obx(() => ListView(shrinkWrap: true, children: [
            ...controller.pickUpList!
                .map((PickUp? pickup) => PickUpItem(
                pickUp: pickup!,
                pickupClick: () {
                  controller.orderSingleRemove();
                }))
                .toList()
          ])))
        ]));
  }
}
