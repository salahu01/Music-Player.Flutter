import 'package:music_app/imports_bindings.dart';

class AuthController extends GetxController with StateMixin {
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }

  //* This variable for store userName when intracting with field
  final name = TextEditingController(text: '');

  //* This methord for store user session
  void storeSession() async {
    if (name.text.isEmpty) {
      Get.snackbar('Warning !', 'This field is requied . Enter valid name .', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    change('', status: RxStatus.loading());
    await SessionSource().storeSession(name.text);
    change('', status: RxStatus.success());
    Get.offAndToNamed(Routes.root);
  }
}
