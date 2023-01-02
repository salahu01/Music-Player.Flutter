import 'package:music_app/imports_bindings.dart';

class OthersTab extends GetView<OfflineController> {
  const OthersTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GridView.builder(
            //   itemCount: 5,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            //   itemBuilder: (BuildContext context, int index) {
            
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
