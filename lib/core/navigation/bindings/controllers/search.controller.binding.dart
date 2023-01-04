import 'package:get/get.dart';

import '../../../../presentation/features/screens/search/controllers/search.controller.dart';

class SearchControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(
      () => SearchController(),
    );
  }
}
