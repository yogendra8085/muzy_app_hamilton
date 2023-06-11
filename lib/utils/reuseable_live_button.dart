import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constvalue/const.dart';

class ReuseableLiveButton extends StatelessWidget {
  String text;
  VoidCallback sumbit;
   ReuseableLiveButton({required this.text,required this.sumbit});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: sumbit,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(color:ColorConst.red,
        borderRadius: BorderRadius.circular(50)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          child: Text("${text}",style: StyleConst.textStyle16white,),
        ),
      ),
    );
  }
}