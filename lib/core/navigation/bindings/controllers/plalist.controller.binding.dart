import 'package:get/get.dart';

import '../../../../../presentation/features/screens/plalist/controllers/plalist.controller.dart';

class PlalistControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlalistController>(
      () => PlalistController(),
    );
  }
}
