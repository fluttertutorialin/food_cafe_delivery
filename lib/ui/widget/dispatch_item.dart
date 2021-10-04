import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_cafe_delivery/resource/value.dart';
import '../../model/pick_up/pick_up.dart';
import '../../resource/images.dart';
import '../../resource/style.dart';

class PickUpItem extends StatelessWidget {
  final PickUp? pickUp;
  final Function? pickupClick;

  const PickUpItem({Key? key, this.pickUp, this.pickupClick}) : super(key: key);

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
                            Text(pickUp!.orderId!, style: idStyle),
                            SizedBox(width: 10.sp),
                            Text('(${pickUp!.customerPaymentType!})',
                                style: paymentOnlineStyle)
                          ]),
                          Text(pickUp!.pickUpDateTime!,
                              style: orderDispatchDate)
                        ]),
                    Row(children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(pickUp!.customerName!,
                                style: customerNameStyle),
                            Text(pickUp!.customerAddress!,
                                style: customerAddressStyle)
                          ])),
                      Image.asset(callImage, width: 35, height: 35)
                    ]),
                    Row(children: [
                      Text('Total Items: ', style: labelStyle),
                      Text('${pickUp!.orderTotalItem}', style: totalItemStyle)
                    ]),
                    Row(children: [
                      Text('Total Amount: ', style: labelStyle),
                      Text('$rsSymbol ${pickUp!.orderTotalAmount}',
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
                                child: Text(pickUpButton,
                                    style: pickUpButtonStyle)),
                            onTap: pickupClick!()))
                  ]))
            ])));
  }
}
