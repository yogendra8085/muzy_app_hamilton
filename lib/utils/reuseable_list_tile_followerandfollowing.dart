import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/utils/reuseable_cached_network_image.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class ReuseableListTilefollower extends StatelessWidget {
  String title;
  String subtitle;
  String leading;
  String text;



  ReuseableListTilefollower({ required this.title,required this.subtitle,required this.leading,required this.text});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.zero,
     leading:ReusableImageWithShimmer(url: leading,height: 50,isCircle: true,width: 50,boxFit: BoxFit.cover),
      title: Text("${title}",style:StyleConst.textStyle16whitebold),
      subtitle: Text("${subtitle}",style: StyleConst.textStyle12grey,),
      trailing:Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.2.h),
        decoration: BoxDecoration(color: Colors.transparent,
            border: Border.all(color: Color(0xff707070)),
            borderRadius: BorderRadius.circular(7.5)
        ),
        child:Text("${text}",style: StyleConst.textStyle14white,),
      ),
    );

  }
}