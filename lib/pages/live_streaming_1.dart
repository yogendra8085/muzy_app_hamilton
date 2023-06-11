import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';
import '../utils/reuseable_container .dart';
import 'browse_our_musicians_details.dart';

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
      body:  Column(
        children: [
          Expanded(
            child: GridView.count(
              shrinkWrap: true,  
                      crossAxisCount: 2,  
                      crossAxisSpacing: 4.0,  
                      mainAxisSpacing: 8.0,  
                      children: List.generate(20, (index) {  
                        return InkWell(
                          onTap: (){
                            Get.to(()=>BrowseOurMusiciansDetails());
                          },
                          child:
                          ReuseableContainer(),
                        );
                      }  
                      )  
                  ),
          ),
        ],
      )  
        )  ;
      
    
  }
}