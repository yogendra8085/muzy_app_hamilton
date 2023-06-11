import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';
import '../utils/reuseable_cached_network_image.dart';
import '../utils/reuseable_container .dart';
import '../utils/reuseable_live_streaming_container.dart';

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
        child: Column(
          children: [
         
           Column(
                      children: [
                        
                          Column(
                            children: [
                               ClipRRect(
                                     borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                       topRight: Radius.circular(8),
                                      ),
                                     child: ReusableImageWithShimmer(
                                    url  : "https://c.saavncdn.com/758/295-Sidhu-Moose-Wala--English-2021-20210922022502-500x500.jpg", height: 140,isCircle: false,boxFit: BoxFit.cover,
                                     )
                                ),
               
                              Container(
                              //  margin: EdgeInsets.symmetric(horizontal: 1.w),
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                color: ColorConst.white
                               
                              ),
                              child: Row(
                                                     
                                children: [
                                  SizedBox(width: 10,),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Saad Lamjarred Live Streaming",style: StyleConst.textStyle17black,),
                                         Text("Luxury Party Band",style: StyleConst.textStyle14black,),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
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
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                                     Expanded(
                                                       child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4),
                                    margin:EdgeInsets.symmetric(horizontal: 5) ,
                                    decoration: BoxDecoration(
                                      color: ColorConst.red,
                                      borderRadius: BorderRadius.circular(50),
                                                       
                                    ),
                                   child: Center(child: Text("Live",style: StyleConst.textStyle15white,)),
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
                          height: 18,
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
                          height: 174,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: ((context, index) {
                            return
                            Reuseablelivestreaming();
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
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: ((context, index) {
                            return ReuseableContainer();
                             
  }
                            ))
                        )
        ]),
      ),
    );
  }
}