
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../utils/reuseable_button.dart';

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
                  Image.asset(AseetsPath.LINE,width: HELLO.length*9,fit: BoxFit.fitWidth,),


                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network("https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",width: 150,height: 150,fit: BoxFit.cover,),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text("Mr.Perfect billa ",style: StyleConst.textStyle18whitesemibold,)
                    ,
                    SizedBox(
                      height: 1.h,
                    ),
                    Text("It not easy without taking one word with life ",style: StyleConst.textStyle16grey,),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(AseetsPath.TWITERICON,width: 20,height: 20,),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("aspirelive",style: StyleConst.textStyle14white,),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AseetsPath.INSTAGRAM,width: 20,height: 20,),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("aspirelive",style: StyleConst.textStyle14white,),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AseetsPath.LINKEDIN,width: 20,height: 20,),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("aspirelive",style: StyleConst.textStyle14white,),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),

              ReuseableButton(hint: "Edit Profile",color: Colors.white,onsumbit: (){},),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ],
           ),
      ),
    );
  }
}
