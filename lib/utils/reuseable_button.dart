

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class ReuseableButton extends StatelessWidget {
  String hint;
  Color color;
  Function onsumbit;
  ReuseableButton({ required this.hint,required this.color,required this.onsumbit});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent ,
      splashColor:Colors.transparent ,
      onTap: (){
        onsumbit();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
        margin: EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),

        child: Center(child: Text("${hint}",style: StyleConst.textStyle14black)),
      ),
    );
  }
}
