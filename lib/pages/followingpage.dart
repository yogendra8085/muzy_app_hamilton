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
      padding:  EdgeInsets.symmetric(horizontal: 15),

      child: Column(
        children: [
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context,index){
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 1.h),
                    child: ReuseableListTilefollower(leading: "https://photosfile.com/wp-content/uploads/2022/06/Sidhu-Moosewala-62.jpg",title: "Sidhu Moosewala",subtitle:"@Sidhu Moosewala",text: "Following"),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
