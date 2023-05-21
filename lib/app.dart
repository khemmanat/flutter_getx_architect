import 'package:flutter/material.dart';
import 'package:flutter_getx_architect/modules/home/home_binding.dart';
import 'package:flutter_getx_architect/modules/home/home_page.dart';
import 'package:flutter_getx_architect/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ScreenUtilInit(
          designSize: const Size(375, 667),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter GetX Architecture',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: HomePage(),
              initialBinding: HomeBinding(),
              getPages: AppPages.pages,
            );
          }),
    );
  }
}
