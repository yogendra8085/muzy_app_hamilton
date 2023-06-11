import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class Reuseablelivestreaming extends StatelessWidget {
  const Reuseablelivestreaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                color: ColorConst.white,
                                borderRadius: BorderRadius.circular(8),
          
                           ),
                              child: Column(
                              
                                children: [
                                Expanded(
                                  child: ClipRRect(
                                       borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                         topRight: Radius.circular(8),
                                        ),
                                       child: Image.asset(AseetsPath.IMAGE,fit: BoxFit.cover,),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       
                                        Text("Armaan Malik",style: StyleConst.textStyle12black,),
                                         Row(
                                
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Container(
                                               width: 20,
                                               height: 20,
                                               decoration: BoxDecoration(
                                                   shape: BoxShape.circle,
                                                   image: DecorationImage(image: AssetImage(AseetsPath.USER))
                                               ),
                                             ),
                                              SizedBox(width: 5,),
                                              Text("kr8ivesyed",style: StyleConst.textStyle11black,),
                                           ],
                                         ),
                                      
                                         Divider(
                                          
                                         ),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
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
                                  ),
                                )
          
                              ]),
                            );;
  }
}