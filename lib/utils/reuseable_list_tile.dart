import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class ReuseableListTile extends StatelessWidget {
  String title;
  String subtitle;
  String leading;
  String? following;
  bool buttontrailling;

   ReuseableListTile({ required this.title,required this.subtitle,required this.leading, this.following,required this.buttontrailling});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(borderRadius: BorderRadius.circular(100),
            child:Image.network("${leading}",width: 50,height: 50,fit: BoxFit.cover,) ,

            ),
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
          trailing:buttontrailling? Container(
            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
            decoration: BoxDecoration(color: ColorConst.red,
            borderRadius: BorderRadius.circular(5)
            ),
            child:Text("Acccept",style: StyleConst.textStyle12white,),
          ):Container(),
          );
         
  }
}