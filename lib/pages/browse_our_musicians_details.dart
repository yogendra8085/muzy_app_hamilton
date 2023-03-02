import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/pages/photas_page.dart';
import 'package:muzy_app/pages/setlist_page.dart';
import 'package:muzy_app/pages/video_page.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';
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
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 25.h,
                width: double.infinity,
                child: Image.network("https://i.ytimg.com/vi/PiPIyPJPlFY/maxresdefault.jpg",fit: BoxFit.cover,))
             ,
               Padding(
                 padding: EdgeInsets.only(right: 2.w,top: 1.h),
                 child: Container(
                      decoration: BoxDecoration(color: ColorConst.red,borderRadius: BorderRadius.circular(25)),
              child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.3.h),
                  child: Text("Live Now",style: StyleConst.textStyle16white,),
              ),
              ),
               )
            ],
          ),
           SizedBox(
              height: 2.h,
            ),
          Container(
            height: 4.5.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
        return  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 1.w,),
          child: InkWell(
            onTap: (){
               i=index;
               setState(() {
                 
               });
            },
            child: Container(
           
              width: 23.w,
                            decoration: BoxDecoration(color:i==index?ColorConst.red: ColorConst.white,borderRadius: BorderRadius.circular(25)),
                    child: Center(child: Text(list[index],style:i==index? StyleConst.textStyle16white:StyleConst.textStyle16grey)),
          
                    ),
          ),

        );
      },),
          ),
          SizedBox(height: 3.h,),
        Expanded(child: list2[i]
        ,)

        ],
      ),
      
    );
  }
}