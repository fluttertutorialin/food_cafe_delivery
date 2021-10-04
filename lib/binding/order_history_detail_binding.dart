import '../controller/controller.dart';
import 'package:get/get.dart';

class OrderDetailBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => OrderDetailController());
}
