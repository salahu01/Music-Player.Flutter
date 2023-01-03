import 'package:music_app/imports_bindings.dart';

class OthersTab extends GetView<OfflineController> {
  OthersTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: 2,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
              ),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: context.iconColor,
                  margin: EdgeInsets.all(16.r),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                  child: Center(
                    child: Text(
                      _list[index],
                      style: AppStyles.trueMusition.copyWith(color: context.theme.scaffoldBackgroundColor),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  final List<String> _list = ['Liked Songs' , 'Play List'];
}
