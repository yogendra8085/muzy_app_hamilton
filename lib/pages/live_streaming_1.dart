import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';

class LiveStreaming1 extends StatefulWidget {
  const LiveStreaming1({super.key});

  @override
  State<LiveStreaming1> createState() => _LiveStreaming1State();
}

class _LiveStreaming1State extends State<LiveStreaming1> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: ColorConst.black,
      body:  GridView.count(  
                crossAxisCount: 2,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                children: List.generate(20, (index) {  
                  return Container(
                            width: 40.w,
                          
                            margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                            decoration: BoxDecoration(
                              color: ColorConst.white,
                              borderRadius: BorderRadius.circular(8),
        
                         ),
                            child: Stack(
                            alignment: Alignment.bottomCenter,
                              children: [
                             Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(image: NetworkImage("https://c.saavncdn.com/758/295-Sidhu-Moose-Wala--English-2021-20210922022502-500x500.jpg",),fit: BoxFit.cover)
                              ),
                             ),
                             
                              Container(
                                width: double.infinity,
                                
                                decoration: BoxDecoration(color: 
                                ColorConst.black.withOpacity(.6),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)
                                ,bottomRight:  Radius.circular(8)
                                ,
                                
                                )
                                
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.8.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                                    children: [
                                      Text("Luxury Showbands",style: StyleConst.textStyle12white,),
                                        Text("22K Views",style: StyleConst.textStyle12white,),
                                    ],
                                  ),
                                ),
                              )
        
                            ]),
                          );
                }  
                )  
            )  
        )  ;
      
    
  }
}