import 'package:get/instance_manager.dart';
import 'package:teamslash/component/controller/bottom_nav.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
