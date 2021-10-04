import 'package:flutter/material.dart';
import 'package:food_cafe_delivery/resource/colors.dart';
import 'package:food_cafe_delivery/resource/images.dart';
import 'package:food_cafe_delivery/resource/style.dart';
import 'package:food_cafe_delivery/resource/value.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            iconTheme: const IconThemeData(color: primarySwatchColor),
            elevation: appBarElevation,
            title: Text('Order details', style: appBarTitleStyle),
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(callImage, width: 30, height: 30))
            ]),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(5),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0)),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  child: Text('DISPATCH', style: pickUpButtonStyle)),
              SizedBox(width: 40.sp),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0)),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  child: Text('CANCEL', style: pickUpButtonStyle)),
            ])),
        body: ListView(children: [
          Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey.withOpacity(0.1),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    backgroundImage: const AssetImage(profileImage)),
                SizedBox(width: 20.sp),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Lakhani kamlesh', style: orderCustomerNameStyle),
                      Row(children: [
                        Text('10011111', style: idStyle),
                        SizedBox(width: 20.sp),
                        Text('5-24-2021 10:19 AM', style: orderDispatchDate)
                      ])
                    ]))
              ])),
          SizedBox(height: 20.sp),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ORDER SUMMARY', style: orderDetailHeaderTitleStyle),
                    SizedBox(height: 10.sp),
                    Row(children: [
                      Flexible(
                          flex: 3500,
                          child: Row(children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 3),
                                child: Image.asset(foodNonVegImage,
                                    height: 12, width: 12)),
                            const SizedBox(width: 5),
                            Text('100', style: menuNameStyle),
                            const SizedBox(width: 5),
                            Text(halfOrderType, style: orderTypeStyle)
                          ])),
                      Flexible(
                          flex: 600,
                          child: Row(children: [
                            Text(quantitySymbol, style: quantitySymbolStyle),
                            Text('1', style: quantityStyle)
                          ])),
                      Flexible(
                          flex: 1100,
                          child: Align(
                              alignment: Alignment.topRight,
                              child:
                                  Text('$rsSymbol 100', style: menuPriceStyle)))
                    ]),
                    Divider(color: Colors.black.withOpacity(0.2)),
                    Row(children: [
                      Flexible(
                          flex: 3500,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Text('CASH', style: paymentPaidStatusStyle),
                                  const SizedBox(width: 3),
                                  Text('($codPaymentType)',
                                      style: paymentCollectStyle)
                                ]),
                                Row(children: [
                                  Text(labelTotal, style: totalQuantityStyle),
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
                            Text('1', style: quantityStyle)
                          ])),
                      Flexible(
                          flex: 1100,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text('$rsSymbol 130',
                                  style: totalAmountStyle)))
                    ]),
                    Divider(color: Colors.black.withOpacity(0.2)),
                  ])),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CUSTOMER DETAIL', style: orderDetailHeaderTitleStyle),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.user, color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Full name', style: orderDetailLabelStyle),
                                Text('Lakhani Kamlesh J.',
                                    style: orderDetailTitleStyle),
                              ]))
                        ]),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.mobilePhone,
                              color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Mobile', style: orderDetailLabelStyle),
                                Text('7990971929',
                                    style: orderDetailTitleStyle),
                              ]))
                        ]),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.locationArrow,
                              color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Address', style: orderDetailLabelStyle),
                                Text(
                                    'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
                                    style: orderDetailTitleStyle),
                              ]))
                        ])
                  ])),
          SizedBox(height: 10.sp),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ORDER DETAIL', style: orderDetailHeaderTitleStyle),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.user, color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Order accept',
                                    style: orderDetailLabelStyle),
                                Text('Lakhani kamlesh',
                                    style: orderDetailTitleStyle),
                              ]))
                        ]),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.clock, color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Order request date',
                                    style: orderDetailLabelStyle),
                                Text('5-24-2021 10:19 AM',
                                    style: orderDetailTitleStyle),
                              ]))
                        ]),
                    SizedBox(height: 10.sp),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.clock, color: Colors.black54),
                          SizedBox(width: 20.sp),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Order accept date',
                                    style: orderDetailLabelStyle),
                                Text('5-24-2021 10:19 AM',
                                    style: orderDetailTitleStyle),
                              ]))
                        ]),
                  ]))
        ]));
  }
}
