import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/routes.dart';

class BottomNavigationController extends GetxController {
  static BottomNavigationController get to => Get.find();

  late PageController? pageController;

  /*final _postsList = List<MyModel>().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;
*/

  final _selectedIndexRx = Rx<int>(0);
  get selectedIndexGet => _selectedIndexRx.value;
  _selectIndexSet(int? index) => _selectedIndexRx.value = index!;

  //FOR BOTTOM NAVIGATION BAR USER SELECT ITEM
  selectIndex(int? index) {
    _selectIndexSet(index!);
    pageController!.animateToPage(selectedIndexGet,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  onInit() {
    super.onInit();
    pageController = PageController(initialPage: _selectedIndexRx.value);
  }

  callLogout() {
    //Get.offAllNamed(loginRoute);
    Get.offNamedUntil(loginRoute, (_) => false);
  }

  @override
  onClose() {
    super.onClose();
    pageController!.dispose();
  }
}
