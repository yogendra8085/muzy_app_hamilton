import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/pages/live_streaming_1.dart';
import 'package:sizer/sizer.dart';

import 'live_streaming_2.dart';

class LiveStreaming extends StatefulWidget {
  const LiveStreaming({super.key});

  @override
  State<LiveStreaming> createState() => _LiveStreamingState();
}

class _LiveStreamingState extends State<LiveStreaming>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  GlobalKey key = GlobalKey();
  @override
  void initState() {
    Future.delayed(Duration(microseconds: 100)).then((v) {
      controller = AnimationController(
          vsync: this, duration: Duration(milliseconds: 500));

      tabWidth = (key.currentContext?.size?.width)! / 2;
      // var width = (media.size.width - (2 * media.padding.left)) / 2;
      // animation = Tween<double>(begin: 0, end: tabWidth).animate(controller!);

      setState(() {});

      controller?.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  var selectedValue = 0;
  double tabWidth = 0;
  List list = [
    LiveStreaming2(),
    LiveStreaming1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: AppBar(
        backgroundColor: ColorConst.black,
        leading: Icon(
          Icons.menu,
          size: 40,
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
          child: Image.asset(AseetsPath.WHITELOGO),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorConst.white,
                hintText: "Search Band Orchestra Singer",
                hintStyle: StyleConst.textStyle16grey,
                suffixIcon: Icon(
                  Icons.search,
                  color: ColorConst.grey,
                ),
                border: StyleConst.borderstyle,
                focusedBorder: StyleConst.borderstyle,
                disabledBorder: StyleConst.borderstyle,
                enabledBorder: StyleConst.borderstyle,
                errorBorder: StyleConst.borderstyle,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                selectedValue == 0
                    ? this.controller?.forward()
                    : controller?.reverse();
                selectedValue = selectedValue == 0 ? 1 : 0;
              },
              child: Container(
                key: key,
                height: 37,
                decoration: BoxDecoration(
                    color: ColorConst.black,
                    borderRadius: BorderRadius.circular(22)),
                child: Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 37,
                          width: tabWidth,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 37,
                            decoration: BoxDecoration(
                              color: selectedValue == 1
                                  ? ColorConst.white
                                  : ColorConst.red,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            width: tabWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 5),
                                Text(
                                  "Live Streaming",
                                  style: selectedValue == 1
                                      ? StyleConst.textStyle16grey
                                      : StyleConst.textStyle16white,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 37,
                            decoration: BoxDecoration(
                              color: selectedValue == 0
                                  ? ColorConst.white
                                  : ColorConst.red,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            width: tabWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 5),
                                Text(
                                  "Band Orchestra Singer",
                                  style: selectedValue == 0
                                      ? StyleConst.textStyle16grey
                                      : StyleConst.textStyle16white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: list[selectedValue],
            ),
          ],
        ),
      ),
    );
  }
}
