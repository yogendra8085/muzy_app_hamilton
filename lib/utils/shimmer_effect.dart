import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


import '../constant/constvalue/const.dart';

/// Common shimmer view
class CommonAppShimmer extends StatelessWidget {
   double width;
   double height;
 ShapeBorder shapeBorder;

  /// Get rectangular shimmer
   CommonAppShimmer.rectangular(
      {Key? key, this.width = double.infinity, required this.height, this.shapeBorder = const RoundedRectangleBorder()})
      : super(key: key);

  /// Get circular shimmer
   CommonAppShimmer.circular(
      {Key? key, this.width = double.infinity, required this.height, this.shapeBorder = const CircleBorder()})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: ColorConst.colorShimmerBase,
        highlightColor: ColorConst.colorShimmerHighlight,
        period: const Duration(seconds: 2),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: ColorConst.colorShimmer,
            shape: shapeBorder,
          ),
        ),
      );
}
