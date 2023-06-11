import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/constvalue/const.dart';

class Reuseablephotocontainer extends StatelessWidget {
  dynamic icon;
   Reuseablephotocontainer({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
                            width: 200,
                            height: 190,
                          
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: BoxDecoration(
                              color: ColorConst.white,
                              borderRadius: BorderRadius.circular(8),
        
                         ),
                            child: Stack(
                            alignment: Alignment.center,
                              children: [
                             Container(
    
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(image: NetworkImage("https://c.saavncdn.com/758/295-Sidhu-Moose-Wala--English-2021-20210922022502-500x500.jpg",),fit: BoxFit.cover)
                              ),
                             ),
                             
                             Icon(icon,color: ColorConst.white,size: 40,)
                              
        
                            ]),
                          );;
  }
}