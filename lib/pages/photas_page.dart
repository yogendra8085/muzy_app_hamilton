import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../constant/constvalue/const.dart';
import '../utils/resueable_photo_container.dart';

class PhotasPage extends StatefulWidget {
  const PhotasPage({super.key});

  @override
  State<PhotasPage> createState() => _PhotasPageState();
}

class _PhotasPageState extends State<PhotasPage> {
  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      backgroundColor: ColorConst.black,
      body:  Column(
        children: [
          Expanded(
            child: GridView.count(  
              shrinkWrap: true,
                      crossAxisCount: 2,  
                      crossAxisSpacing: 2.0,  
                      mainAxisSpacing: 2.0,  
                      children: List.generate(20, (index) {  
                        return
                        Reuseablephotocontainer(icon: FontAwesomeIcons.magnifyingGlassPlus,);
                      }  
                      )  
                  ),
          ),
        ],
      )  
        )  ;
  }
}