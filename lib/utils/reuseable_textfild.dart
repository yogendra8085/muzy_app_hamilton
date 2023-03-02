
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constvalue/const.dart';

class ReusableTextfiled extends StatelessWidget {
  String title;
  TextEditingController ? editingController;
  int ?maxline=1;
  int? minline=1;
  ReusableTextfiled({required this.title,required this.editingController,this.maxline,this.minline});
   // ReusableTextfiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxline,
      minLines: minline,
      style:  StyleConst.textStyle14white,
      controller: editingController,
      decoration: InputDecoration(
          hintText: "${title}",
          border:  OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFFFFF)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFFFFF)),
            borderRadius: BorderRadius.circular(10.0),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFFFFF)),
            borderRadius: BorderRadius.circular(10.0),

          ),
          disabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFFFFF)),
            borderRadius: BorderRadius.circular(10.0),

          ),
          hintStyle: StyleConst.textStyle14white,

      ),
    );
  }
}
