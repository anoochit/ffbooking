import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeController extends GetxController {
  final navIndex = 0.obs;
  Rx<DeviceScreenType> screenType = DeviceScreenType.mobile.obs;
}
