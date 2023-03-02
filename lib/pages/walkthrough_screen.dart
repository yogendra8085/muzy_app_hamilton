import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConst.black,
      body: Column(children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            SizedBox(
                width: double.infinity,
                child: Image.asset(AseetsPath.PICTURES)),
            SizedBox(
                width: double.infinity,
                child:
                    Opacity(opacity: 0.6, child: Image.asset(AseetsPath.WAVE))),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            "Lorem Ipsum is simply dummy\ntext of the printing and\ntypesetting industry.",
            style: TextStyle(color: ColorConst.white, fontSize: 26),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: ColorConst.red,
                      shape: BoxShape.circle,
                    )),
            ],
          ),
        ),
        Padding(
         padding:EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(25),
           color: ColorConst.red,
            child: Container(
              
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: ColorConst.red,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: ColorConst.white, width: 1)),
              child: Center(
                  child: Text("Get Start",
                      style: TextStyle(
                        color: ColorConst.white,
                      ))),
            ),
          ),
        ),
        Spacer(),
        SizedBox(width: double.infinity, child: Image.asset(AseetsPath.WAVE)),
      ]),
    ));
  }
}
