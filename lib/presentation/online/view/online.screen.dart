import 'package:music_app/imports_bindings.dart';

class OnlineScreen extends GetView<OnlineController> {
  const OnlineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const PopularArtists(),
      ),
      body: Center(
        child: Text(
          'OnlineScreen is working',
          style: context.textTheme.headline1,
        ),
      ),
    );
  }
}
