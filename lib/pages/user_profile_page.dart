
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_button.dart';
import '../utils/reuseable_textfild.dart';
import '../utils/reuseable_textfiled_profile.dart';

class UserProfileEdit extends StatefulWidget {
  const UserProfileEdit({Key? key}) : super(key: key);

  @override
  State<UserProfileEdit> createState() => _UserProfileEditState();
}

class _UserProfileEditState extends State<UserProfileEdit> {
  TextEditingController _fullnamecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).viewPadding.top,
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: 120,
                height: 120,
                child: DottedBorder(
                  dashPattern: [5, 5],
                  borderType: BorderType.Circle,


                  color: Color(0xffA39160),
                  strokeWidth: 2,



                  child:Center(
                    child: Icon(Icons.add,color: Color(0xffA39160),size: 40,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
                    SizedBox(height: 1.h,),
                    ReusableTextfiledProfile(title: "Enter Full name",editingController:_fullnamecontroller ,icon: Icons.person,),
                    SizedBox(height: 2.h,),
                    ReusableTextfiledProfile(title: "Enter User Name",editingController:_fullnamecontroller ,icon: Icons.alternate_email,),
                    SizedBox(height: 2.h,),
                    ReusableTextfiledProfile(title: "User Bio/Hashtages",editingController:_fullnamecontroller ,icon: Icons.tag,),
                    SizedBox(height: 2.h,),
                    ReusableTextfiledProfile(title: "Enter Location",editingController:_fullnamecontroller ,icon: Icons.location_on,),
                    SizedBox(height: 2.h,),
                    ReusableTextfiledProfile(title: "User Bio/Hashtages",editingController:_fullnamecontroller ,icon: Icons.date_range,),
                  ],
                ),
              ),
              Spacer(),
              ReuseableButton(hint: "Next",color: Colors.white,onsumbit: (){}),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
