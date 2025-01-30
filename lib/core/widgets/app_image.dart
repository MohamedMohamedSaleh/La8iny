import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.path, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color,
    this.placeholderHight,
  });
  final String path;
  final double? height, width, placeholderHight;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (path.endsWith('svg')) {
      return SvgPicture.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        // ignore: deprecated_member_use
        color: color,
      );
    } else if (path.startsWith('http')) {
      return CachedNetworkImage(
        alignment: Alignment.topCenter,
        imageUrl: path,
        placeholder: (context, url) => SizedBox(
          height: placeholderHight,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error_outline_rounded,
            color: Theme.of(context).primaryColor,
          ),
        ),
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else {
      return Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
  }
}
