import '../controller/controller.dart';
import 'package:get/get.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => PickUpController());
    Get.lazyPut(() => DispatchController());
    Get.lazyPut(() => OrderHistoryController());
  }
}
