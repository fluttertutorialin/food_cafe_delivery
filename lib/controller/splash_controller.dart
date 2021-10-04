import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../resource/routes.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  static SplashController get to => Get.find();

  late AnimationController _controller;
  late Animation<Offset> offsetAnimation;

  @override
  void onInit() {
    super.onInit();

    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    offsetAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -0.8)).animate(
            CurvedAnimation(parent: _controller, curve: Curves.decelerate));
    _controller.forward().then((value) => _controller.reverse());
  }

  @override
  void onReady() {
    super.onReady();
    _navigationPage();
  }

  _navigationPage() async =>
      await Future.delayed(const Duration(seconds: 3)).then((value) {
        Get.offAllNamed(loginRoute);
      });
}
