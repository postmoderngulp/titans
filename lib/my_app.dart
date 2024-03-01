import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:titans/Navigation/Navigate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    NavigateService navigateService = NavigateService();
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (BuildContext context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: navigateService.initRoute,
        routes: navigateService.routes,
      ),
    );
  }
}
