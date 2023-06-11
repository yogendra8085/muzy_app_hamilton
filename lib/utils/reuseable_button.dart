

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class ReuseableButton extends StatelessWidget {
  String hint;
  Color color;
  String colortext;
  Function onsumbit;
  ReuseableButton({ required this.hint,required this.color,required this.onsumbit, this.colortext="white"});

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

        child: Center(child: Text("${hint}",style: colortext=="white"?StyleConst.textStyle14white: StyleConst.textStyle14black)),
      ),
    );
  }
}

class ReuseableButton2 extends StatelessWidget {
  String hint;
  Color color;
  Function onsumbit;
  ReuseableButton2({ required this.hint,required this.color,required this.onsumbit});

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
         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
         margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

        child: Center(child: Text("${hint}",style: StyleConst.textStyle14white)),
      ),
    );
  }
}

