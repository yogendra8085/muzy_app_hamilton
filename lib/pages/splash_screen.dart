import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: ColorConst.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(AseetsPath.WAVE,fit: BoxFit.cover,)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset(AseetsPath.WHITELOGO,fit: BoxFit.cover,),
              ),
             
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 50),
                child: Row(children: [
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    decoration: BoxDecoration(
                      color: ColorConst.red,
                         borderRadius: BorderRadius.circular(25),
                           border: Border.all(color: ColorConst.white,width: 1)
                    ),
                    child: Center(child: Text("English",style: TextStyle(color: ColorConst.white,)))
                  ,)
                
                ,),
                Expanded(child: 
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: ColorConst.red,
                      border: Border.all(color: ColorConst.white,width: 1)
                    ),
                    child: Center(child: Text("عربي",style: TextStyle(color: ColorConst.white,)))
                  ,)
                
                ,)
                        ],
                      ),
              ),
              
        
  ]),
      )
    );
  }
}