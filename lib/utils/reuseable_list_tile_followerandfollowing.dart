import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class ReuseableListTilefollower extends StatelessWidget {
  String title;
  String subtitle;
  String leading;



  ReuseableListTilefollower({ required this.title,required this.subtitle,required this.leading});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(borderRadius: BorderRadius.circular(100),
        child:Image.network("${leading}",width: 50,height: 50,fit: BoxFit.cover,) ,

      ),
      title: Text("${title}",style:StyleConst.textStyle16whitebold),
      subtitle: Text("${subtitle}",style: StyleConst.textStyle12grey,),
      trailing:Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.2.h),
        decoration: BoxDecoration(color: Colors.transparent,
            border: Border.all(color: Color(0xff707070)),
            borderRadius: BorderRadius.circular(7.5)
        ),
        child:Text("Following",style: StyleConst.textStyle14white,),
      ),
    );

  }
}