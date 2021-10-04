import '../controller/controller.dart';
import 'package:get/get.dart';

class OrderHistoryDetailBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => OrderHistoryDetailController());
}
