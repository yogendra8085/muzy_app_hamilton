import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/utils/reuseable_button.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_textfild.dart';

class AdvanceBokking extends StatefulWidget {
  const AdvanceBokking({Key? key}) : super(key: key);

  @override
  State<AdvanceBokking> createState() => _AdvanceBokkingState();
}

TextEditingController _eventnamecontroller = TextEditingController();
TextEditingController _personnamecontroller = TextEditingController();
TextEditingController _contactcontroller = TextEditingController();
TextEditingController _eventcontroller = TextEditingController();
TextEditingController _streamingcontroller = TextEditingController();

class _AdvanceBokkingState extends State<AdvanceBokking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Advance Booking for live streaming .",
                      style: StyleConst.textStyle16red,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                      title: "Enter Name",
                      editingController: _eventnamecontroller,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                      title: "Person Name",
                      editingController: _personnamecontroller,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                      title: "Contact Number",
                      editingController: _contactcontroller,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                      title: "Event Date",
                      editingController: _eventcontroller,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Expanded(child: ReusableTextfiled(title: "Start time",editingController: _eventcontroller,)),
                        SizedBox(
                          width: 3.w,
                        ),
                        Expanded(child: ReusableTextfiled(title: "End time",editingController: _eventcontroller,)),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                      title: "Streaming platform",
                      editingController: _streamingcontroller,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ReusableTextfiled(
                        title: "Important Details ",
                        editingController: _streamingcontroller,
                        maxline: 6,
                        minline: 5),

                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ReuseableButton(
                  hint: "Confirm", color: Colors.red, onsumbit: () {})
            ],
          ),
        ),
      ),
    );
  }
}
