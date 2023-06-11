
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constvalue/const.dart';

class ReusableTextfiledProfile extends StatelessWidget {
  String title;
  TextEditingController ? editingController;
  int ?maxline=1;
  int? minline=1;
  IconData  icon;
  ReusableTextfiledProfile({required this.title,required this.editingController,this.maxline,this.minline,required this.icon});
  // ReusableTextfiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(

      maxLines: maxline,
      minLines: minline,


      style:  StyleConst.textStyle14white,
      controller: editingController,
      decoration: InputDecoration(
        prefixIcon: Icon(icon,color: Colors.white,size: 20,),
        fillColor: Color(0xff1F1F1F),
        filled: true,
        isDense: true,
        hintText: "${title}",
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),

        ),
        disabledBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),

        ),
        hintStyle: StyleConst.textStyle14white,

      ),
    );
  }
}
