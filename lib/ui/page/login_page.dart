import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';
import '../../resource/images.dart';
import '../../resource/routes.dart';
import '../../resource/style.dart';
import '../../resource/value.dart';
import '../widget/form_button_widget.dart';
import '../widget/text_field_component.dart';

class LoginPage extends GetView<LoginController> {
  final _key = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _key,
          child: ListView(children: [_formUI()])));

  _formUI() =>  Container(
      padding: EdgeInsets.all(50.r),
      child: Column(children: <Widget>[
        SizedBox(height: Get.height / 10),
        _formIcon(),
        SizedBox(height: 50.0.h),
        _loginFormWidget(),
        _loginPress()
      ]));

  _formIcon() => Center(
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(appIconImage)));

  _loginPress() => FormButtonWidget(
        onPressed: () {
          Get.offNamed(bottomNavigationRoute);
        },
        color: Get.theme.accentColor,
        text: Text(loginButton,
            style: buttonNameStyle),
      ).paddingSymmetric(vertical: 10);

  _loginFormWidget() => Column(children: [
        TextFieldComponent(
            labelText: emailHint,
            controller: controller.emailController,
            textInputAction: TextInputAction.next,
            focusNode: controller.emailFocusNode,
            keyboardType: TextInputType.emailAddress),
        const SizedBox(height: 15),
        TextFieldComponent(
            labelText: passwordHint,
            controller: controller.passwordController,
            textInputAction: TextInputAction.done,
            focusNode: controller.passwordFocusNode,
            obscureText: true),
      ]);
}
