import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:muzy_app/utils/shimmer_effect.dart';

class ReusableImageWithShimmer extends StatelessWidget {
  const ReusableImageWithShimmer({
    Key? key,
    required this.url,
    required this.height,
    this.isCircle = true,
    this.boxFit = BoxFit.contain,
    this.width=double.infinity,
    this.placeholderUrl = 'assets/images/no_image.png',
  }) : super(key: key);
  final double height;
  final double width;
  final String url;
  final bool isCircle;
  final BoxFit boxFit;
  final String placeholderUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isCircle ? height / 2 : 0),
        child: CachedNetworkImage(
          imageUrl: url,
          errorWidget: (context, url, error) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(isCircle ? height / 2 : 0),
              child: Image.asset(
                placeholderUrl,
                fit: boxFit,
              ),
            );
          },
          fit: boxFit,
          placeholder: (context, url) {
            return isCircle
                ? CommonAppShimmer.circular(height: height)
                : CommonAppShimmer.rectangular(height: height);
          },
        ),
      ),
    );
  }
}