import 'package:music_app/imports_bindings.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthScreen', style: context.textTheme.headline1),
        centerTitle: true,
      ),
      body: Center(
        child: Button.loading(
          onPressed: () {},
          text: 'Continue',
          isLoading: true,
          height: 40.h,
          width: 280.w,
          loadingSize: 25.r,
        ),
      ),
    );
  }
}
