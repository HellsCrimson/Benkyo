import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:benkyo/home_page.dart';
import 'package:benkyo/notification_service.dart';
import 'package:benkyo/widgets/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application. Benkyō
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Const.PRIMARY_COLOR,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          primarySwatch: Const.PRIMARY_COLOR,
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.dark,
        home: HomePage(),
      ),
    );
  }
}
