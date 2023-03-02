import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class LiveStreaming2 extends StatefulWidget {
  const LiveStreaming2({super.key});

  @override
  State<LiveStreaming2> createState() => _LiveStreaming2State();
}

class _LiveStreaming2State extends State<LiveStreaming2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: SingleChildScrollView(
        child: Column(children: [
           Column(
                      children: [
                        
                          Column(
                            children: [
                               ClipRRect(
                                     borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                       topRight: Radius.circular(8),
                                      ),
                                     child: Image.asset(AseetsPath.ALBUM),
                                ),
               
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 1.w),
                              width: double.infinity,
                              height: 10.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                color: ColorConst.white
                               
                              ),
                              child: Row(
                         
                                children: [
                                  SizedBox(width: 2.w,),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Saad Lamjarred Live Streaming",style: StyleConst.textStyle17black,),
                                         Text("Luxury Party Band",style: StyleConst.textStyle14black,),
                                        Row(
                                          children: [
                                            Container(
                                              width: 8.w,
                                              height: 5.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(image: AssetImage(AseetsPath.USER))
                                              ),
                                            ),
                                            SizedBox(
                                              width: 0.7.w,
                                            ),
                                            Text("Scintillate",style: StyleConst.textStyle12black,)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                         Expanded(
                           child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ColorConst.red,
                                      borderRadius: BorderRadius.circular(50),
                           
                                    ),
                                   child: Padding(
                                     padding:  EdgeInsets.symmetric(horizontal: 7.w,vertical: 0.7.h),
                                     child: Text("Live",style: StyleConst.textStyle15white,),
                                   ),
                                  ),
                                  Text("3K watching",style: StyleConst.textStyle12black,)
                                ],
                           ),
                         )
                                ],
                              ),
                        ),
                            ],
                          ),
                       
                       
                 
                 
                      ],
                    ),
                     SizedBox(
                          height: 2.h,
                        ),
          
                     Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Live Streaming",style: StyleConst.textStyle18whitesemibold,),
                          Row(
                            children: [
                              Text("Show All",style: StyleConst.textStyle16red,),
                              Icon(Icons.arrow_forward_ios_sharp,color: ColorConst.red,size: 20,)
                            ],
                          )
                        ],),
                        Container(
                          width: double.infinity,
                          height: 23.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: ((context, index) {
                            return Container(
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
                          })
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Top Band & Orchestra Singer",style: StyleConst.textStyle18whitesemibold,),
                          Row(
                            children: [
                              Text("Show All",style: StyleConst.textStyle16red,),
                              Icon(Icons.arrow_forward_ios_sharp,color: ColorConst.red,size: 20,)
                            ],
                          )
                        ],),
                        Container(
                          width: double.infinity,
                          height: 20.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: ((context, index) {
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
                          })
                          ),
                        )
        ]),
      ),
    );
  }
}