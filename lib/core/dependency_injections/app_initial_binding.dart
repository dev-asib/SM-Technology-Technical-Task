import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class AppInitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Logger());
    Get.put(
      LoggerService(logger: Get.find<Logger>()),
    );

    Get.put(NetworkCaller(loggerServices: Get.find<LoggerService>()));
    Get.put(Assignment3Controller());
    Get.put(HomeController());
    Get.put(Assignment2Controller());
    Get.put(MainBottomNavController());
  }
}
