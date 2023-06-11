import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ColorConst{
  static const Color red=Color(0xffF70000);
  static const Color white=Color(0xffFFFFFF);
  static const Color black=Color(0xff000000);
  static const Color grey=Color(0xff808080);
  static const Color colorShimmerBase = Color(0xFFE0E0E0); 
  static const Color colorShimmerHighlight = Color(0xFFF5F5F5); 
  static const Color colorShimmer = Color(0xFFBDBDBD);
}
class StyleConst{
  static String fontFamily="Gibson";
   static var borderstyle=OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20.0),
              
                );
  static var borderstyletextfield=OutlineInputBorder(
  //  borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(20.0),

  );

    static TextStyle textStyle12white=TextStyle(
      fontSize: 12,
      fontFamily: fontFamily,
      color: ColorConst.white
      
    );
    static TextStyle textStyle11black=TextStyle(
      fontSize: 11,
      fontFamily: fontFamily,
      color: ColorConst.black
      
    );
    static TextStyle textStyle11grey=TextStyle(
      fontSize: 11,
      fontFamily: fontFamily,
      color: ColorConst.grey
      
    );
     static TextStyle textStyle12black=TextStyle(
      fontSize: 12,
      fontFamily: fontFamily,
      color: ColorConst.black
      
    );
     static TextStyle textStyle12grey=TextStyle(
      fontSize: 12,
      fontFamily: fontFamily,
      color: ColorConst.grey
      
    );
     static TextStyle textStyle17black=TextStyle(
      fontSize: 17,
      fontFamily: fontFamily,
      color: ColorConst.black
      
    );
     static TextStyle textStyle17white=TextStyle(
      fontSize: 17,
      fontFamily: fontFamily,
      color: ColorConst.white
      
      
    );
     static TextStyle textStyle16grey=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: ColorConst.grey
      
      
    );
  static TextStyle textStyle16orange=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: Color(0xffB49C5D),
    fontWeight: FontWeight.bold


  );
     static TextStyle textStyle16white=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: ColorConst.white
      
      
    );
    static TextStyle textStyle16whitebold=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: ColorConst.white,
      fontWeight: FontWeight.bold
      
      
    );
    static TextStyle textStyle16red=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: ColorConst.red
      
      
    );
     static TextStyle textStyle16black=TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: ColorConst.grey
      
      
    );
      static TextStyle textStyle14black=TextStyle(
      fontSize: 14,
      fontFamily: fontFamily,
      color: ColorConst.black
      
      
    );
  static TextStyle textStyle14whitebold=TextStyle(
      fontSize: 14,
      fontFamily: fontFamily,
      color: ColorConst.white,
    fontWeight: FontWeight.bold


  );

      static TextStyle textStyle14white=TextStyle(
      fontSize: 14,
      fontFamily: fontFamily,
      color: ColorConst.white
      
      
    );
     static TextStyle textStyle22whitesemibold=TextStyle(
      fontSize: 22,
      fontFamily: fontFamily,
      color: ColorConst.white,
      fontWeight: FontWeight.w600,
      
      
    );
      static TextStyle textStyle18whitesemibold=TextStyle(
      fontSize: 18,
      fontFamily: fontFamily,
      color: ColorConst.white,
      fontWeight: FontWeight.w600,
      
      
    );
  static TextStyle textStyle18redsemibold=TextStyle(
    fontSize: 18,
    fontFamily: fontFamily,
    color: ColorConst.red,
    fontWeight: FontWeight.w600,


  );
     static TextStyle textStyle15white=TextStyle(
      fontSize: 15,
      fontFamily: fontFamily,
      color: ColorConst.white,
     
      
      
    );
  static TextStyle textStyle20blue=TextStyle(
    fontSize: 20,
    fontFamily: fontFamily,
    color: Color(0xff000087),
    fontWeight: FontWeight.bold



  );
}

