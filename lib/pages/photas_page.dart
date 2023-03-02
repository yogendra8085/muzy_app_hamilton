import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class PhotasPage extends StatefulWidget {
  const PhotasPage({super.key});

  @override
  State<PhotasPage> createState() => _PhotasPageState();
}

class _PhotasPageState extends State<PhotasPage> {
  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      backgroundColor: ColorConst.black,
      body:  GridView.count(  
                crossAxisCount: 2,  
                crossAxisSpacing: 2.0,  
                mainAxisSpacing: 2.0,  
                children: List.generate(20, (index) {  
                  return Container(
                            width: 40.w,
                          
                            margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                            decoration: BoxDecoration(
                              color: ColorConst.white,
                              borderRadius: BorderRadius.circular(8),
        
                         ),
                            child: Stack(
                            alignment: Alignment.center,
                              children: [
                             Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(image: NetworkImage("https://c.saavncdn.com/758/295-Sidhu-Moose-Wala--English-2021-20210922022502-500x500.jpg",),fit: BoxFit.cover)
                              ),
                             ),
                             
                             Icon(FontAwesomeIcons.magnifyingGlassPlus,color: ColorConst.white,size: 40,)
                              
        
                            ]),
                          );
                }  
                )  
            )  
        )  ;
  }
}