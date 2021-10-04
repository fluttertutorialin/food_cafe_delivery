import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DependencyInjection {
  static void init() {
    //SESSION BINDING
    Get.lazyPut<GetStorage>(() => GetStorage(), fenix: true);
  }
}
