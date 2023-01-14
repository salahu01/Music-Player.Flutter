import 'package:music_app/imports_bindings.dart';

class OnlineScreen extends GetView<OnlineController> {
  const OnlineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        title: const PopularArtists(),
      ),
      body: Center(
        child: Text(
          'Coming soon ...',
          style: context.textTheme.headline1,
        ),
      ),
    );
  }
}
