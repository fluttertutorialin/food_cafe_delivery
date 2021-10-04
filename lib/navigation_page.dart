import 'package:get/get.dart';
import 'binding/binding.dart';
import 'resource/routes.dart';
import 'ui/page/page.dart';

abstract class NavigationPage {
  static final List<GetPage> pages = [
    GetPage(
        name: firstLaunchRoute,
        page: () => SplashPage(),
        binding: SplashBinding()),

    GetPage(
        name: loginRoute,
        page: () => LoginPage(),
        binding: LoginBinding()),

    GetPage(
        name: bottomNavigationRoute,
        page: () => const BottomNavigationPage(),
        binding: BottomNavigationBinding()),

    GetPage(
        name: orderDetailRoute,
        binding: OrderDetailBinding(),
        page: () => const OrderDetailPage()),

    GetPage(
        name: orderHistoryDetailRoute,
        binding: OrderHistoryDetailBinding(),
        page: () => const OrderHistoryDetailPage()),

  ];
}
