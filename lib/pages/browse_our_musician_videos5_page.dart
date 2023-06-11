import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muzy_app/pages/photas_page.dart';
import 'package:muzy_app/pages/setlist_page.dart';
import 'package:muzy_app/pages/video_page.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';
import 'info_page.dart';

class BrowseOurMusiciansVideo5 extends StatefulWidget {
  const BrowseOurMusiciansVideo5({super.key});

  @override
  State<BrowseOurMusiciansVideo5> createState() => _BrowseOurMusiciansVideo5State();
}

class _BrowseOurMusiciansVideo5State extends State<BrowseOurMusiciansVideo5> {
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
            alignment: Alignment.center,
            children: [
              Container(
                  height: 30.h,
                  width: double.infinity,
                  child: Image.network("https://i.ytimg.com/vi/PiPIyPJPlFY/maxresdefault.jpg",fit: BoxFit.cover,))
              ,
              Positioned(
                  right: 2.w,top: 1.h,
                child: Container(
                  decoration: BoxDecoration(color: ColorConst.red,borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.3.h),
                    child: Text("Live Now",style: StyleConst.textStyle16white,),
                  ),
                ),
              ),
              Icon(Icons.play_circle,color: ColorConst.white,size:50 ,),
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex:5,
                      child: Text(
                        "About Scintillate - luxury international party band based in London",
                        style: StyleConst.textStyle18whitesemibold,
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: Text(
                        "Paid",
                        style: StyleConst.textStyle18whitesemibold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RatingBar(
                          initialRating: 4.5,
                          itemSize: 20,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: ColorConst.red,
                            ),
                            half: Icon(
                              Icons.star_half,
                              color: ColorConst.red,
                            ),
                            empty: Icon(
                              Icons.star_border,
                              color: ColorConst.red,
                            ),
                          ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "4.4 (1653)",
                          style: StyleConst.textStyle16red,
                        ),
                      ],


                    ),
                    Row(children: [
                      Icon(Icons.group,color: ColorConst.red,),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("63 Views",  style: StyleConst.textStyle16red,)
                    ],)
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text("Booked 184 times on Muzi ⚡",style: StyleConst.textStyle18whitesemibold,),
                SizedBox(
                  height: 2.h,
                ),
                Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,),
                SizedBox(
                  height: 4.h,
                ),
                Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,)
              ],
            ),
          ),





        ],
      ),

    );
  }
}