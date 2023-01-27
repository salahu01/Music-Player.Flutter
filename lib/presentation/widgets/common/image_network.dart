import 'package:music_app/imports_bindings.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({
    super.key,
    required this.imageUrl,
    this.placeholderWidget,
    this.errorWidget,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  //image url to load image
  final String imageUrl;

  //loading widget while image is loading
  final Widget? placeholderWidget;

  //error widget to show error when image loading failed or invalid image url
  final Widget? errorWidget;

  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) {
        return placeholderWidget ??
            Center(
              child: Shimmer.fromColors(
                baseColor: context.theme.scaffoldBackgroundColor,
                highlightColor: context.iconColor!,
                child: Image.asset(appIcon, width: width, height: height),
              ),
            );
      },
      errorWidget: (_, __, error) {
        return errorWidget ??
            Center(
              child: Shimmer.fromColors(
                baseColor: context.theme.scaffoldBackgroundColor,
                highlightColor: context.iconColor!,
                child: Image.asset(appIcon, width: width, height: height),
              ),
            );
      },
    );
  }
}
