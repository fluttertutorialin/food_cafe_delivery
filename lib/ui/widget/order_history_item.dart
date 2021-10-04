import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/dispatch/dispatch.dart';
import '../../resource/value.dart';
import '../../resource/images.dart';
import '../../resource/style.dart';

class DispatchItem extends StatelessWidget {
  final Dispatch? dispatch;
  final Function() dispatchClick;

  const DispatchItem({Key? key, this.dispatch, required this.dispatchClick})
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
                            Text(dispatch!.orderId!, style: idStyle),
                            SizedBox(width: 10.sp),
                            Text('(${dispatch!.customerPaymentType!})',
                                style: paymentOnlineStyle)
                          ]),
                          Text(dispatch!.dispatchDateTime!,
                              style: orderDispatchDate)
                        ]),
                    Row(children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(dispatch!.customerName!,
                                style: customerNameStyle),
                            Text(dispatch!.customerAddress!,
                                style: customerAddressStyle)
                          ])),
                      Image.asset(callImage, width: 35, height: 35)
                    ]),
                    Row(children: [
                      Text('Total Items: ', style: labelStyle),
                      Text('${dispatch!.orderTotalQuantity}', style: totalItemStyle)
                    ]),
                    Row(children: [
                      Text('Total Amount: ', style: labelStyle),
                      Text('$rsSymbol ${dispatch!.orderTotalAmount}',
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
                                child: Text(dispatchButton,
                                    style: pickUpButtonStyle)),
                            onTap: dispatchClick))
                  ]))
            ])));
  }
}
