import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/utils/reuseable_list_tile.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
          Text("New",style: StyleConst.textStyle18whitesemibold), SizedBox(
              height: 1.h,
            ),
        
          Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
              itemBuilder: (BuildContext context, int index) { 
                    return Column(
                      children: [
                        ReuseableListTile(leading: "https://photosfile.com/wp-content/uploads/2022/06/Sidhu-Moosewala-62.jpg",title: "Sidhu Moosewala",subtitle: "5 second ago",following: "liked your post",buttontrailling: true),
                     Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xff373743),thickness: 0.5,))
                      ],
                     )
                      ],
                    );
    
                 },
              ),
            ],
          ),
              ]),
      ) ,
    );
  }
}