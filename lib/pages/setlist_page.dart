import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class SetListPage extends StatefulWidget {
  const SetListPage({super.key});

  @override
  State<SetListPage> createState() => _SetListPageState();
}

class _SetListPageState extends State<SetListPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConst.black,
      body:  GridView.count(  
                crossAxisCount: 2,  
                crossAxisSpacing: 2.0,  
                mainAxisSpacing: 2.0,  
                children: List.generate(20, (index) {  
                  return  Container(
                              width: 40.w,
                              margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                              decoration: BoxDecoration(
                                color: ColorConst.white,
                                borderRadius: BorderRadius.circular(8),
          
                           ),
                              child: Column(
                              
                                children: [
                                ClipRRect(
                                     borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                       topRight: Radius.circular(8),
                                      ),
                                     child: Image.asset(AseetsPath.IMAGE),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     
                                      Text("Armaan Malik",style: StyleConst.textStyle12black,),
                                       Row(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                          
                                            SizedBox(width: 1.w,),
                                            Text("kr8ivesyed",style: StyleConst.textStyle11black,),
                                         ],
                                       ),
                                    
                                       Divider(
          
                                       ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 02),
                                        decoration: BoxDecoration(
                                          color: ColorConst.red,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Text('Live',style: StyleConst.textStyle14white,),
                                      ),
                                      Text("3K watching",style: StyleConst.textStyle12black,)
                                       ],),
                                    ],
                                  ),
                                )
          
                              ]),
                            );
                }  
                )  
            )  
        )  ;;
  }
}