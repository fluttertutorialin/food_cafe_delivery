import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../resource/colors.dart';
import '../../resource/images.dart';
import '../../resource/style.dart';
import '../../resource/routes.dart';
import '../../resource/value.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverToBoxAdapter(child: _topHeader()),
                  SliverToBoxAdapter(child: _menuWidget()),
                ])));
  }

  _menuWidget() => Column(children: [
        SizedBox(height: 12.w),
        Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              const Icon(LineIcons.bell),
              SizedBox(width: 15.w),
              Text(notification, style: profileMenuStyle)
            ])),
        const Divider(),
        SizedBox(height: 12.w),
        Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              const Icon(LineIcons.readme),
              SizedBox(width: 15.w),
              Text(aboutUs, style: profileMenuStyle)
            ])),
        const Divider(),
        SizedBox(height: 12.w),
        Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              const Icon(LineIcons.locationArrow),
              SizedBox(width: 15.w),
              Text(contactUs, style: profileMenuStyle)
            ])),
        const Divider(),
        SizedBox(height: 12.w),
        InkWell(
            child: Container(
                padding: const EdgeInsets.all(15),
                child: Row(children: [
                  const Icon(LineIcons.lock),
                  SizedBox(width: 15.w),
                  Text(logout, style: profileMenuStyle)
                ])),
            onTap: () {
              Get.offAllNamed(loginRoute);
            }),
        const Divider()
      ]);

  _topHeader() {
    return Container(
        color: primarySwatchColor,
        child: Stack(children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            _headerSetting(),
            SizedBox(height: 16.h),
            _todayReportCounter(),
            const SizedBox(height: 13)
          ])
        ]));
  }

  _headerSetting() => Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: Row(children: [
        GestureDetector(
            onTap: () => {},
            child: const CircleAvatar(
                radius: 30, backgroundImage: ExactAssetImage(profileImage))),
        Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Kamlesh', style: titleReportStyle)]))),
      ]));

  _todayReportCounter() => Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Text(pendingLabel, style: reportLabelStyle),
          const SizedBox(height: 1),
          Text('00', style: reportCounterStyle)
        ]),
        Column(children: [
          Text(pickUpLabel, style: reportLabelStyle),
          const SizedBox(height: 1),
          Text('00', style: reportCounterStyle)
        ]),
        Column(children: [
          Text(dispatchedLabel, style: reportLabelStyle),
          const SizedBox(height: 1),
          Text('00', style: reportCounterStyle)
        ]),
        Column(children: [
          Text(cancelLabel, style: reportLabelStyle),
          const SizedBox(height: 1),
          Text('00', style: reportCounterStyle)
        ])
      ]));
}
