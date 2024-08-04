import 'package:get/get.dart';

import '../views/counter_screen.dart';
import '../views/home_screen.dart';

class AppPages {
  static const HOME = '/';
  static const COUNTER = '/counter';

  static final routes = [
    GetPage(name: HOME, page: () => const HomeScreen()),
    GetPage(name: COUNTER, page: () => CounterScreen()),
  ];
}
