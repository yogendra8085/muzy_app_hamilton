import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_list_tile_followerandfollowing.dart';

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 3.w),

      child: Column(
        children: [
          SizedBox(height: 2.h,),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context,index){
                return Padding(
                  padding:  EdgeInsets.symmetric(vertical: 1.h),
                  child: ReuseableListTilefollower(leading: "https://photosfile.com/wp-content/uploads/2022/06/Sidhu-Moosewala-62.jpg",title: "Sidhu Moosewala",subtitle:"@Sidhu Moosewala"),
                );
              }),
        ],
      ),
    );
  }
}