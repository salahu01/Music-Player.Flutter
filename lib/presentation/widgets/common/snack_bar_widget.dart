

import 'package:music_app/imports_bindings.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key, required this.title, required this.message});

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 10.w,
            decoration: BoxDecoration(
              color: AppColors.primarySwatch,
              borderRadius: BorderRadius.horizontal(left: 10.circular),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  10.verticalSpace,
                  Text(
                    message,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
