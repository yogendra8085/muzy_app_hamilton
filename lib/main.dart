import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/pages/advancebookin_page.dart';
import 'package:muzy_app/pages/advancebooking2_page.dart';
import 'package:muzy_app/pages/browse_our_musician_videos5_page.dart';
import 'package:muzy_app/pages/browse_our_musicians_details.dart';
import 'package:muzy_app/pages/browse_our_musicians_video.dart';
import 'package:muzy_app/pages/followingandfollwer_tap_bar_page.dart';
import 'package:muzy_app/pages/info_page.dart';
import 'package:muzy_app/pages/live_streaming.dart';
import 'package:muzy_app/pages/live_streaming_1.dart';
import 'package:muzy_app/pages/navebar_bottom.dart';
import 'package:muzy_app/pages/notification_page.dart';
import 'package:muzy_app/pages/photas_page.dart';
import 'package:muzy_app/pages/profile_page.dart';
import 'package:muzy_app/pages/register_page.dart';
import 'package:muzy_app/pages/sign_in.dart';
import 'package:muzy_app/pages/splash_screen.dart';
import 'package:muzy_app/pages/user_profile_page.dart';
import 'package:muzy_app/pages/video_page.dart';
import 'package:muzy_app/pages/walkthrough_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData(
          fontFamily: "Gibson",
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: ColorConst.red,
          ),
        ),
          home: Navebarpage() ,
        );
      },
    );
  }
}


 