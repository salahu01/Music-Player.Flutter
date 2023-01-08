import 'package:music_app/imports_bindings.dart';

extension ValueNotifierX<T> on ValueNotifier<T> {
  void listen(void Function(T) callBack) {
    addListener(() {
      callBack.call(value);
    });
  }
}
