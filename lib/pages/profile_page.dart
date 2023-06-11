
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/pages/user_profile_page.dart';
import 'package:muzy_app/utils/reuseable_cached_network_image.dart';
import 'package:muzy_app/utils/reuseable_follow_roe.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../utils/reuseable_button.dart';
import 'followers_page.dart';
import 'followingandfollwer_tap_bar_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    String HELLO = '@Micale clarke';
    print(HELLO.length);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
           body: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${HELLO}",style: StyleConst.textStyle22whitesemibold,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(AseetsPath.LINE,width: HELLO.length*9,fit: BoxFit.fitWidth,),
                  ),


                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(100),
                    //   child: Image.network("https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",width: 110,height: 120,fit: BoxFit.cover,),
                    // ),
                    ReusableImageWithShimmer(url: "https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", height: 100,width: 100,isCircle: true,boxFit: BoxFit.cover),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Mr.Perfect billa ",style: StyleConst.textStyle18whitesemibold,)
                    ,
                    SizedBox(
                      height: 10,
                    ),
                    Text("It not easy without taking one word with life ",style: StyleConst.textStyle16grey,),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(AseetsPath.TWITERICON,width: 20,height: 20,),
                      SizedBox(
                      width: 10,
                      ),
                      Text("aspirelive",style: StyleConst.textStyle14white,),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AseetsPath.INSTAGRAM,width: 20,height: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("aspirelive",style: StyleConst.textStyle14white,),
                    ],
                  ),
                
                ],
              ),
              SizedBox(
                height: 10,
              ),

              ReuseableButton(hint: "Edit Profile",color: Colors.white,onsumbit: (){
                Get.to(()=>UserProfileEdit());
              },colortext: "black",
              ),
              SizedBox(
                height: 10,
              ),
               ReuseableFollowrow(followerclick: (){
               Get.to(()=>FollowerAndFollowingTabbarPage(index: 0,));
             },followingclick: (){
                 Get.to(()=>FollowerAndFollowingTabbarPage(index: 1,));
             },)
            ],
           ),
      ),
    );
  }
}
