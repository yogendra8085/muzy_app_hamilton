import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/constvalue/const.dart';

class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                              width: 150,
                              height: 150,
                            
                              margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                              decoration: BoxDecoration(
                                color: ColorConst.white,
                                borderRadius: BorderRadius.circular(8),
          
                           ),
                              child: Stack(
                              alignment: Alignment.bottomCenter,
                                children: [
                               Container(
        
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(image: NetworkImage("https://c.saavncdn.com/758/295-Sidhu-Moose-Wala--English-2021-20210922022502-500x500.jpg",),fit: BoxFit.cover)
                                ),
                               ),
                               
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(color: 
                                  ColorConst.black.withOpacity(.6),
                                  
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 8,vertical:5),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      
                                      children: [
                                        Text("Luxury Showbands",style: StyleConst.textStyle12white,),
                                          Text("22K Views",style: StyleConst.textStyle12white,),
                                      ],
                                    ),
                                  ),
                                )
          
                              ]),
                            );
  }
}