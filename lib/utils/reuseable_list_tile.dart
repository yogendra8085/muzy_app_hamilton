import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/utils/reuseable_button.dart';
import 'package:muzy_app/utils/reuseable_cached_network_image.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class ReuseableListTile extends StatelessWidget {
  String title;
  String subtitle;
  String leading;
  String? following;
  bool buttontrailling;
  VoidCallback sumbit;

   ReuseableListTile({ required this.title,required this.subtitle,required this.leading, this.following,required this.buttontrailling,required this.sumbit});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      dense: true,
            contentPadding: EdgeInsets.zero,
            leading:ReusableImageWithShimmer(url: leading,height: 50,isCircle: true,width: 50,boxFit: BoxFit.cover),
            title: RichText(
        // Controls visual overflow
        overflow: TextOverflow.clip,

        // Controls how the text should be aligned horizontally
        textAlign: TextAlign.end,

        // Control the text direction
        textDirection: TextDirection.rtl,

        // Whether the text should break at soft line breaks
        softWrap: true,

        // Maximum number of lines for the text to span
        maxLines: 2,

        // The number of font pixels for each logical pixel
        textScaleFactor: 1,
        text: TextSpan(
          text: '${title} ',
          style: StyleConst.textStyle16whitebold,
          children: <TextSpan>[
            TextSpan(
                text: '${following}', style: StyleConst.textStyle14white),
          ],
        ),
      ),
            subtitle: Text("${subtitle}",style: StyleConst.textStyle11grey,),
          trailing:buttontrailling? InkWell(
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent ,
            splashColor:Colors.transparent ,
            onTap: sumbit,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
              decoration: BoxDecoration(color: ColorConst.red,
              borderRadius: BorderRadius.circular(5)
              ),
              child:Text("Acccept",style: StyleConst.textStyle12white,),
            ),
          ):Text("Pay",style: StyleConst.textStyle12white,),
          );
         
  }
}