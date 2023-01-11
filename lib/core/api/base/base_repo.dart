import 'package:music_app/imports_bindings.dart';

class BaseRepository with ApiException {
  //* This constructor body for creating singleton widget
  factory BaseRepository() {
    _baseRepository == null ? {_baseRepository = BaseRepository._internel()} : null;
    return _baseRepository!;
  }

  //* This named constructor for create object for this class
  BaseRepository._internel();

  //* This variable for store this class object globally
  static BaseRepository? _baseRepository;

  //* This  methord for to create api call easly ( just  like middleware for handling api calls )
  Future<T> apiCall<R, T>({required Future<R> call, required T Function(R data) onSuccess}) async {
    final json = await call.catchError((e) async {
      e is DioError ? write(e.toString()) : write(e.toString());
      throw await handle(e);
    });
    return onSuccess(json);
  }
}
