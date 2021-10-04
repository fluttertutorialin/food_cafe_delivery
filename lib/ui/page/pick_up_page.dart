import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';
import '../../resource/colors.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import '../widget/pick_up_item.dart';
import '../../model/pick_up/pick_up.dart';

class PickUpPage extends GetView<PickUpController> {
  const PickUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: appBarElevation,
            title: Text(pickUpTitle, style: appBarTitleStyle)),
        body: Obx(() => ListView(children: [
          ...controller.pickUpList!
              .map((PickUp? pickup) => PickUpItem(
              pickUp: pickup!,
              pickupClick: () {
                controller.orderSingleRemove();
              }))
              .toList()
        ])));
  }
}
