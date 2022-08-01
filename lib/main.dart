import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'model/language.dart';
import 'widget/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (_, ctx) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: Locale("en", "US"),
          fallbackLocale: Locale("en", "US"),
          theme: ThemeData(
              //brightness: Brightness.dark,
              ),
          home: Scaffold(
            body: BottomNavController(),
          ),
        );
      },
    );
  }
}
