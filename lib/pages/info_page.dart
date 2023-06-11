import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/utils/reuseable_button.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_follow_roe.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ReuseableFollowrow(followerclick: (){},followingclick: (){}),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                      height:      20
                          ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          "About Scintillate - luxury international party band based in London",
                          style: StyleConst.textStyle22whitesemibold,
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        width:10
                          ),
                      Expanded(
                        flex: 2,
                        child: Text("5 KD /Hr",style:StyleConst.textStyle16red ,),
                      ),
                    ],
                  ),
                  SizedBox(
                        height:      20
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
                          height: 5,
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
                  Text("Booked 184 times on Muzi ⚡",style: StyleConst.textStyle18whitesemibold,),
                  SizedBox(
                            height: 1.h,
                          ),
                  Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,maxLines: 2,),
                    SizedBox(
                            height: 2.h,
                          ),
                     Text("Scintillate are a luxury high-end function band with over 15 years of industry experience.",style: StyleConst.textStyle16white,maxLines: 2,),
           
             
                    
               ],
             ),
           ),
         
            ReuseableButton2(
                hint: "Book Now", color: Colors.red, onsumbit: () {
                 // Get.to(()=>AdvanceBokking2());
            })
           
          ],
        ),
      ),
    );
  }
}
