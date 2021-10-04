import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  String _email = '', _password = '';

  final _autoValidate = Rx<bool>(false);
  var passwordVisible = Rx<bool>(true);

  changeEmail(String value) {
    _email = value;
  }

  changePassword(String value) {
    _password = value;
  }

  checkAutoValidate() {
    _autoValidate.value = true;
  }

  togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  /*_loginFetch() async {

  }*/
}
