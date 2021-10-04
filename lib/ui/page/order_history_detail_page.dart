import 'package:flutter/material.dart';
import '../../controller/controller.dart';
import '../../resource/api.dart';
import '../../resource/colors.dart';
import '../../resource/images.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class OrderHistoryDetailPage extends GetView<OrderHistoryDetailController> {
  const OrderHistoryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            iconTheme: const IconThemeData(color: primarySwatchColor),
            elevation: appBarElevation,
            title: Text(orderDetailTitle, style: appBarTitleStyle),
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(callImage, width: 30, height: 30))
            ]),
        body: SingleChildScrollView(
            child: Column(children: [
          _customerDetailTopWidget(),
          SizedBox(height: 20.sp),
          _orderSummaryWidget(),
          _customerDetailWidget(),
          SizedBox(height: 10.sp),
          _orderDetailWidget()
        ])));
  }

  _customerDetailTopWidget() => Container(
      padding: const EdgeInsets.all(10),
      color: Colors.grey.withOpacity(0.1),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.withOpacity(0.1),
            backgroundImage: const AssetImage(profileImage)),
        SizedBox(width: 20.sp),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(controller.orderHistory!.customerName!,
              style: orderCustomerNameStyle),
          Row(children: [
            Text(controller.orderHistory!.orderId!, style: idStyle),
            SizedBox(width: 20.sp),
            Text(controller.orderHistory!.dispatchDateTime!,
                style: orderDetailDispatchDate)
          ])
        ])),
        Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(5.0))),
            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: Text(controller.orderHistory!.orderStatus!,
                style: pickUpButtonStyle))
      ]));

  _orderSummaryWidget() => Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(labelOrderSummary.toUpperCase(),
            style: orderDetailHeaderTitleStyle),
        SizedBox(height: 10.sp),
        Obx(() => Column(
            children: controller.orderDetail!.orderSummaryList!
                .map((item) => Row(children: [
                      Flexible(
                          flex: 3500,
                          child: Row(children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 3),
                                child: Image.asset(
                                    item!.isVegNonVeg! == vegIcon
                                        ? foodVegImage
                                        : foodNonVegImage,
                                    height: 12,
                                    width: 12)),
                            const SizedBox(width: 5),
                            Text(item.foodName!, style: foodNameStyle),
                            const SizedBox(width: 5),
                            Text(
                                item.orderType == fullOrderTypeApi
                                    ? fullOrderType
                                    : halfOrderType,
                                style: orderTypeStyle)
                          ])),
                      Flexible(
                          flex: 600,
                          child: Row(children: [
                            Text(quantitySymbol, style: quantitySymbolStyle),
                            Text('${item.quantity!}', style: quantityStyle)
                          ])),
                      Flexible(
                          flex: 1100,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text('$rsSymbol ${item.price!}',
                                  style: menuPriceStyle)))
                    ]))
                .toList())),
        Divider(color: Colors.black.withOpacity(0.2)),
        Row(children: [
          Flexible(
              flex: 3500,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text(paymentTypeLabel.toUpperCase(),
                          style: paymentPaidStatusStyle),
                      const SizedBox(width: 3),
                      Text('(${controller.orderHistory!.customerPaymentType!})',
                          style: paymentCollectStyle)
                    ]),
                    Row(children: [
                      Text(totalLabel, style: totalQuantityStyle),
                      const SizedBox(width: 3),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset(informationImage,
                              height: 15, width: 15)),
                      const SizedBox(width: 3)
                    ])
                  ])),
          Flexible(
              flex: 600,
              child: Row(children: [
                Text(quantitySymbol, style: quantitySymbolStyle),
                Text('${controller.orderHistory!.orderTotalQuantity!}',
                    style: quantityStyle)
              ])),
          Flexible(
              flex: 1100,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                      '$rsSymbol ${controller.orderHistory!.orderTotalAmount!}',
                      style: totalAmountStyle)))
        ]),
        Divider(color: Colors.black.withOpacity(0.2)),
      ]));

  _customerDetailWidget() => Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(customerDetailLabel, style: orderDetailHeaderTitleStyle),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.user, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(fullNameLabel, style: orderDetailLabelStyle),
                Text(controller.orderHistory!.customerName!,
                    style: orderDetailTitleStyle),
              ]))
        ]),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.mobilePhone, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(mobileLabel, style: orderDetailLabelStyle),
                Text(controller.orderHistory!.customerMobile!,
                    style: orderDetailTitleStyle)
              ]))
        ]),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.locationArrow, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(addressLabel, style: orderDetailLabelStyle),
                Text(controller.orderHistory!.customerAddress!,
                    style: orderDetailTitleStyle)
              ]))
        ])
      ]));

  _orderDetailWidget() => Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(orderDetailLabel.toUpperCase(),
            style: orderDetailHeaderTitleStyle),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.user, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(orderAcceptLabel, style: orderDetailLabelStyle),
                Obx(() => Text(
                    controller.orderDetail!.orderDetail!.orderAcceptName!,
                    style: orderDetailTitleStyle))
              ]))
        ]),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.clock, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(orderDateLabel, style: orderDetailLabelStyle),
                Obx(() => Text(
                    controller.orderDetail!.orderDetail!.orderRequestDateTime!,
                    style: orderDetailTitleStyle))
              ]))
        ]),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.clock, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(orderAcceptDateLabel, style: orderDetailLabelStyle),
                Obx(() => Text(
                    controller.orderDetail!.orderDetail!.orderRequestDateTime!,
                    style: orderDetailTitleStyle))
              ]))
        ]),
        SizedBox(height: 10.sp),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(LineIcons.clock, color: Colors.black54),
          SizedBox(width: 20.sp),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(orderPickUpDateLabel, style: orderDetailLabelStyle),
                Obx(() => Text(
                    controller.orderDetail!.orderDetail!.orderPickupDateTime!,
                    style: orderDetailTitleStyle))
              ]))
        ])
      ]));
}
