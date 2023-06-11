import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muzy_app/pages/photas_page.dart';
import 'package:muzy_app/pages/setlist_page.dart';
import 'package:muzy_app/pages/video_page.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';
import '../utils/reuseable_cached_network_image.dart';
import '../utils/reuseable_live_button.dart';
import 'browse_our_musicians_video.dart';
import 'info_page.dart';

class BrowseOurMusiciansDetails extends StatefulWidget {
  const BrowseOurMusiciansDetails({super.key});

  @override
  State<BrowseOurMusiciansDetails> createState() => _BrowseOurMusiciansDetailsState();
}

class _BrowseOurMusiciansDetailsState extends State<BrowseOurMusiciansDetails> {
 List<String > list=["Info","Photos","Videos","Set List"];
 List list2=[InfoPage(),PhotasPage(),VideoPage(),SetListPage()];
 int i=0;
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
         
          Stack(
            children: [
              ReusableImageWithShimmer(url:"https://i.ytimg.com/vi/PiPIyPJPlFY/maxresdefault.jpg",height: 200,boxFit: BoxFit.cover,isCircle: false, ),
              Align(
                alignment: Alignment.topRight,
                child: ReuseableLiveButton(text: "Live Now",sumbit: () {
                  Get.to(()=>BrowseOurMusiciansVideo4());
                },)),

            ],
          ),
               SizedBox(height: 20,),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                setState(() {
                  i=index;
                });
              },
              child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 30,),
              margin:  EdgeInsets.symmetric(horizontal: 5,),
                decoration: BoxDecoration(color:i==index?ColorConst.red: ColorConst.white,borderRadius: BorderRadius.circular(25)),
                        child: Center(child: Text(list[index],style:i==index? StyleConst.textStyle16white:StyleConst.textStyle16grey)),),
            );
          }),
        ),
        SizedBox(height: 20,),
         
        Expanded(child: list2[i]
        ,)

        ],
      ),
      
    );
  }
}