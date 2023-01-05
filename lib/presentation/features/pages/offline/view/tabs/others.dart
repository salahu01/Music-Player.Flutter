import 'package:music_app/imports_bindings.dart';

class OthersTab extends GetView<OfflineController> {
  const OthersTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: AppData.offlineOters.length,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
              ),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: AppData.offlineOters[index].onTap,
                  child: Card(
                    color: context.iconColor,
                    margin: EdgeInsets.all(16.r),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                    child: Center(
                      child: Text(
                        AppData.offlineOters[index].otherName,
                        style: AppStyles.trueMusition.copyWith(color: context.theme.scaffoldBackgroundColor),
                      ),
                    ),
                  ),
                );
              },
            ).paddingSymmetric(vertical: 8.r, horizontal: 4.r),
          ],
        ),
      ),
    );
  }
}
