import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:sizer/sizer.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    AseetsPath.POSTICON,
                    scale: 4,
                  ),
                  SizedBox(height: 1.h,),
                  Text("0", style: StyleConst.textStyle16white),
                  SizedBox(height: 1.h,),
                  Text(
                    "Posts",
                    style: StyleConst.textStyle16white,
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AseetsPath.GROPSICON,
                    scale: 4,
                  ),
                  SizedBox(height: 1.h,),
                  Text("1", style: StyleConst.textStyle16white),
                  SizedBox(height: 1.h,),
                  Text(
                    "Followers",
                    style: StyleConst.textStyle16grey,
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AseetsPath.ACCOUNT,
                    scale: 4,
                  ),
                  SizedBox(height: 1.h,),
                  Text("20", style: StyleConst.textStyle16white),
                  SizedBox(height: 1.h,),
                  Text(
                    "Following",
                    style: StyleConst.textStyle16grey,
                  )
                ],
              ),
            ],
          ),
         SizedBox(
                    height: 3.h,
                  ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              "About Scintillate - luxury international party band based in London",
              style: StyleConst.textStyle22whitesemibold,
            ),
          ),
          SizedBox(
                    height: 1.h,
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    height: 1.h,
                  ),
          Padding(
             padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text("Booked 184 times on Muzi ⚡",style: StyleConst.textStyle18whitesemibold,),
          ),
          SizedBox(
                    height: 1.h,
                  ),
          Padding(
         padding:  EdgeInsets.symmetric(horizontal: 10.w),
         child: Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,),
       ),
       SizedBox(
                    height: 2.h,
                  ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,),
        )
        
        ],
      ),
    );
  }
}
