import 'package:music_app/imports_bindings.dart';

mixin ApiException {
  Future<String> handle(DioError e) async {
    if (e.error.toString().contains('SocketException')) {
      if (await Get.put<InternetConnectionChecker>(InternetConnectionChecker()).hasConnection) {
        return 'Server went wrong ! Please try again later ';
      } else {
        return 'Please make sure about your connection !';
      }
    } else if (e.response != null) {
      return jsonDecode(e.response.toString())['errors'] ?? '';
    }
    return 'Something went wrong ! Please try again later ';
  }
}
