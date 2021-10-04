import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../resource/colors.dart';
import '../resource/style.dart';
import '../resource/validation.dart';
import '../resource/value.dart';

extension DynamicUtil on dynamic {
  void toast(
      {String title = appName,
      message,
      Color backgroundColor = toastBackgroundColor,
      Color textColor = toastMessageColor,
      SnackPosition flushBarPosition = SnackPosition.BOTTOM}) {
    Get.rawSnackbar(
        animationDuration: const Duration(seconds: 2),
        message: '',
        title: '',
        isDismissible: true,
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.black.withOpacity(0.2),
        duration: const Duration(milliseconds: 2000),
        overlayColor: Colors.black,
        leftBarIndicatorColor: Colors.deepOrange,
        overlayBlur: 0,
        backgroundGradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.deepOrange.withOpacity(0.8),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 2.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp),
        barBlur: 6,
        titleText: Text(title, style: flushBarTitleStyle(toastTitleColor)),
        messageText: Text(message, style: flushBarMessageStyle(textColor)));
  }
}

extension ContextExtensions on BuildContext {
  double widthInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  showProgress() {
    showDialog(
        context: this,
        barrierDismissible: false,
        builder: (context) => Container(
            alignment: FractionalOffset.center,
            child: const CircularProgressIndicator(strokeWidth: 1)));
  }

  void hideProgress() {
    Navigator.pop(this);
  }
}

extension DateTimeExtensions on int {

}

extension ValiationExtensions on String {
  mobileCalling() => launch('tel:' + this);

  validateEmail() {
    var regExp = RegExp(emailPattern);
    if (isEmpty) {
      return 'Email is required';
    } else if (!regExp.hasMatch(this)) {
      return 'Invalid email';
    } else {
      return null;
    }
  }

  validatePassword() {
    if (isEmpty) {
      return 'Password is required';
    } else if (length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}

extension WidgetExtensions on Widget {
  circleProgressIndicator() => Container(
      alignment: FractionalOffset.center,
      child: const CircularProgressIndicator(strokeWidth: 1));
}
