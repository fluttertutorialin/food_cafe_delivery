import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/order_history/order_history.dart';
import '../../resource/value.dart';
import '../../resource/images.dart';
import '../../resource/style.dart';

class OrderHistoryItem extends StatelessWidget {
  final OrderHistory? orderHistory;
  final Function() orderHistoryClick;

  const OrderHistoryItem(
      {Key? key, this.orderHistory, required this.orderHistoryClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  backgroundImage: const AssetImage(profileImage)),
              SizedBox(width: 20.sp),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text(orderHistory!.orderId!, style: idStyle),
                            SizedBox(width: 10.sp),
                            Text('(${orderHistory!.customerPaymentType!})',
                                style: paymentOnlineStyle)
                          ]),
                          Text(orderHistory!.dispatchDateTime!,
                              style: orderDispatchDate)
                        ]),
                    Row(children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(orderHistory!.customerName!,
                                style: customerNameStyle),
                            Text(orderHistory!.customerAddress!,
                                style: customerAddressStyle)
                          ])),
                      Image.asset(callImage, width: 35, height: 35)
                    ]),
                    Row(children: [
                      Text(totalItemLabel, style: labelStyle),
                      Text('${orderHistory!.orderTotalQuantity}',
                          style: totalItemStyle)
                    ]),
                    Row(children: [
                      Text(totalAmountLabel, style: labelStyle),
                      Text('$rsSymbol ${orderHistory!.orderTotalAmount}',
                          style: totalItemStyle)
                    ]),
                    SizedBox(height: 10.sp),
                    Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 3, 10, 3),
                                child: Text(orderHistory!.orderStatus!,
                                    style: pickUpButtonStyle)),
                            onTap: orderHistoryClick))
                  ]))
            ])));
  }
}
