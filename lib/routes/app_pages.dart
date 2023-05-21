import 'package:flutter_getx_architect/modules/home/home_binding.dart';
import 'package:flutter_getx_architect/modules/home/home_page.dart';
import 'package:flutter_getx_architect/modules/profile/profile_binding.dart';
import 'package:flutter_getx_architect/modules/profile/profile_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
