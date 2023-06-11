import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class ReuseableFollowrow extends StatelessWidget {
  VoidCallback followingclick;
  VoidCallback followerclick;
   ReuseableFollowrow({required this.followingclick,required this.followerclick});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              
                InkWell(
                  onTap: followerclick,
                  child: Column(
                    children: [
                      Image.asset(
                        AseetsPath.GROPSICON,
                        scale: 5,
                      ),
                      SizedBox(height: 5,),
                      Text("1", style: StyleConst.textStyle16white),
                
                      Text(
                        "Followers",
                        style: StyleConst.textStyle16grey,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: followingclick,
                  child: Column(
                    children: [
                      Image.asset(
                        AseetsPath.ACCOUNT,
                        scale: 5,
                      ),
                      SizedBox(height: 5,),
                      Text("20", style: StyleConst.textStyle16white),
                
                      Text(
                        "Following",
                        style: StyleConst.textStyle16grey,
                      )
                    ],
                  ),
                ),
              ],
            );
  }
}