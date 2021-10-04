import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dependency_injection.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'navigation_page.dart';
import 'resource/colors.dart';
import 'resource/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white));

  await GetStorage.init();

  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: const Size(750, 812),
      builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          enableLog: true,
          theme: ThemeData(
              /*colorScheme: ColorScheme.light(
            primary: const Color(0xff263c7a),
            secondary: const Color(0xfffca311),
            onSecondary: Colors.black,
            onPrimary: Colors.white,
            primaryVariant: const Color(0xff00174d),
            secondaryVariant: const Color(0xffc37400)),*/
              scaffoldBackgroundColor: backgroundColor,
              brightness: Brightness.light,
              primaryColor: primaryColor,
              primarySwatch: primarySwatchColor),
          initialRoute: firstLaunchRoute,
          getPages: NavigationPage.pages));
}
