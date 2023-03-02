import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';
import 'followers_page.dart';
import 'followingpage.dart';
import 'live_streaming_1.dart';

class FollowerAndFollowingTabbarPage extends StatefulWidget {
  const FollowerAndFollowingTabbarPage({super.key});

  @override
  State<FollowerAndFollowingTabbarPage> createState() => _FollowerAndFollowingTabbarPageState();
}

class _FollowerAndFollowingTabbarPageState extends State<FollowerAndFollowingTabbarPage> with SingleTickerProviderStateMixin{

  TabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }
  List list=[
    Followerspage(),
    Following(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor: Color(0xff040415),
         
        appBar: AppBar(
          
          backgroundColor: Color(0xff040415),
          title: Text("Kierrasaris564",style: StyleConst.textStyle18whitesemibold),

        
      
      ),
        body:Column(
          children: [
            Container(
              //This is responsible for the background of the tabbar, does the magic
              padding: EdgeInsets.zero,
                decoration: BoxDecoration(

                  //This is for background color
                    color: Colors.white.withOpacity(0.0),

                    //This is for bottom border that is needed
                    border: Border(bottom: BorderSide(color: Color(0xff707070), width: 1))),
                child: TabBar(

                 padding: EdgeInsets.zero,
                  indicator:
                  BoxDecoration(

                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffE76944),
                        width: 2.0,

                      ),
                    ),
                  ),

                    controller: _controller,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Text(
                        "Following",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "Gibson"),
                      ),
                    ),
                    Text("Followers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "Gibson")),
                  ],
                ),

            ),
            Expanded(child:TabBarView(
              controller: _controller,
              children: [
                Followerspage(),
                Following()
              ],
            )),

        ]
          ),
    ),
    );
  }
}