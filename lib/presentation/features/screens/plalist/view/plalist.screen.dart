import 'package:music_app/imports_bindings.dart';

class PlalistScreen extends GetView<PlalistController> {
  const PlalistScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Lists', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
      ),
    );
  }
}
