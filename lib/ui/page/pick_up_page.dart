import 'package:flutter/material.dart';
import 'package:food_cafe_delivery/resource/colors.dart';
import 'package:food_cafe_delivery/resource/images.dart';
import 'package:food_cafe_delivery/resource/style.dart';
import 'package:food_cafe_delivery/resource/value.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: appBarElevation,
            title: Text(pickUpTitle, style: appBarTitleStyle)),
        body: ListView(children: [
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Text('10011111', style: idStyle),
                                      SizedBox(width: 10.sp),
                                      Text('(ONLINE)', style: paymentOnlineStyle)
                                    ]),

                                    Text('00-00-0000',
                                        style: orderDispatchDate),
                                  ]),
                              Row(children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text('Lakhani kamlesh',
                                          style: customerNameStyle),
                                      Text(
                                          'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
                                          style: customerAddressStyle)
                                    ])),
                                Image.asset(callImage, width: 35, height: 35)
                              ]),
                              Row(children: [
                                Text('Total Items: ', style: labelStyle),
                                Text('1', style: totalItemStyle)
                              ]),
                              Row(children: [
                                Text('Total Amount: ', style: labelStyle),
                                Text('Rs. 1000', style: totalItemStyle),
                              ]),
                              SizedBox(height: 10.sp),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.1),
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                            topLeft: Radius.circular(5.0),
                                            bottomLeft: Radius.circular(5.0)),
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 3, 10, 3),
                                      child: Text('PICK UP',
                                          style: pickUpButtonStyle)))
                            ]))
                      ])))
        ]));
  }
}
