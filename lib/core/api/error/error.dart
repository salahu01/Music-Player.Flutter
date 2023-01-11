import 'package:music_app/imports_bindings.dart';

mixin ApiException {
  Future<AppErrors> handle(DioError e) async {
    if (e.error.toString().contains('SocketException')) {
      if (await Get.put<InternetConnectionChecker>(InternetConnectionChecker()).hasConnection) {
        return AppErrors.sereverError(message: 'Server went wrong ! Please try again later ');
      } else {
        return AppErrors.noInternet(message: 'Please make sure about your connection !');
      }
    } else if (e.response != null) {
      return AppErrors.sereverError(message: jsonDecode(e.response.toString())['errors'] ?? '');
    }
    return AppErrors.unknownError(message: 'Something went wrong ! Please try again later ');
  }
}
