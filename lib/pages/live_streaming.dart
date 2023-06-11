import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/pages/live_streaming_1.dart';
import 'package:sizer/sizer.dart';

import '../controller/tab_bar_controller.dart';
import 'live_streaming_2.dart';

class LiveStreaming extends StatefulWidget {
  const LiveStreaming({super.key});

  @override
  State<LiveStreaming> createState() => _LiveStreamingState();
}

class _LiveStreamingState extends State<LiveStreaming>
    {
 

  GlobalKey key = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

 
  List list = [
    LiveStreaming2(),
    LiveStreaming1(),
  ];
  final tabcontroller1=Get.put(tabcontroller);
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    print(currentindex);

    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: AppBar(
        backgroundColor: ColorConst.black,
        leading: Icon(
          Icons.menu,
          size: 40,
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
          child: Image.asset(AseetsPath.WHITELOGO),
        ),
      ),
      body: GetBuilder <tabcontroller>(
        init: tabcontroller(),
        builder: (newcontroller) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: ColorConst.white,
                    hintText: "Search Band Orchestra Singer",
                    hintStyle: StyleConst.textStyle16grey,
                    suffixIcon: Icon(
                      Icons.search,
                      color: ColorConst.grey,
                    ),
                    border: StyleConst.borderstyle,
                    focusedBorder: StyleConst.borderstyle,
                    disabledBorder: StyleConst.borderstyle,
                    enabledBorder: StyleConst.borderstyle,
                    errorBorder: StyleConst.borderstyle,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
               
                  Row(
                    children: [
                      
                      Expanded(
                        child: InkWell(
                            onTap: (){
                          newcontroller.live();
                            newcontroller.change(0);
                        },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:newcontroller.livestreaming.value? ColorConst.red:ColorConst.white,
                              ),
                              child: Center(
                                  child: Text(
                                "Live Streaming",
                                style: newcontroller.livestreaming.value? StyleConst.textStyle16white:StyleConst.textStyle16grey,
                              ))),
                        ),
                      ),
                      SizedBox(width: 10,),
                       Expanded(
                        child: InkWell(
                          onTap: (){
                            newcontroller.brand();
                              newcontroller.change(1);
                          },
                          child: Container(
                               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:newcontroller.brandsinger.value? ColorConst.red:ColorConst.white,
                              ),
                              child: Center(
                                  child: Text(
                                "Band Orchestra Singer",
                                style:newcontroller.brandsinger.value? StyleConst.textStyle16white:StyleConst.textStyle16grey,
                              ))),
                        ),
                      ),
                       
                    ],
                  ),
                
                SizedBox(
                  height: 2.h,
                ),
                Expanded(
                  child: list[  newcontroller.index.value],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
