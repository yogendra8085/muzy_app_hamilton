import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/utils/reuseable_list_tile.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../utils/reuseable_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  sumbit(){
     showModalBottomSheet(
                backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    //Scrolling given for content in Container()
                    return
                      BlurryContainer(
                        child:   SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Container(
                            height: 250,


                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(AseetsPath.CARD,scale: 5,),
                                Text("You have to pay total 10KD",style: StyleConst.textStyle20blue,),
                                ReuseableButton(hint: "Pay Now",color: Colors.red,onsumbit: (){},colortext: "white",)

                              ],
                            ),
                          ),
                        ),
                        blur: 1,
                        width: double.infinity,
                        height: 250,
                        elevation: 0,
                        color: Colors.white.withOpacity(.9),

                        borderRadius:  BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35)),
                      );
                  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040415),
      appBar: AppBar(
        
        backgroundColor: Color(0xff040415),
        title: Text("Notification",style: StyleConst.textStyle18whitesemibold),
       // leading: ,
       centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w,),
            child: Column(

              children: [
                SizedBox(
                  height: 1.h,
                ),
              Text("New",style: StyleConst.textStyle18whitesemibold), SizedBox(
                  height: 1.h,
                ),

             
                  ]),

          ),
          Expanded(
            child: ListView.builder(

              shrinkWrap: true,
              itemCount: 15,

              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15,),
                  child: Column(
                    children: [
                      ReuseableListTile(leading: "https://photosfile.com/wp-content/uploads/2022/06/Sidhu-Moosewala-62.jpg",title: "Sidhu Moosewala",subtitle: "5 second ago",following: "liked your post",buttontrailling: true,sumbit:sumbit ),
                      Row(
                        children: [
                          Expanded(child: Divider(color: Color(0xff373743),thickness: 0.5,))
                        ],
                      )
                    ],
                  ),
                );

              },
            ),
          ),
        ],
      ) ,
    );
  }
}