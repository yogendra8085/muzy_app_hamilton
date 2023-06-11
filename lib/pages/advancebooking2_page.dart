import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/utils/reuseable_button.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_textfild.dart';

class AdvanceBokking2 extends StatefulWidget {
  const AdvanceBokking2({Key? key}) : super(key: key);

  @override
  State<AdvanceBokking2> createState() => _AdvanceBokking2State();
}

TextEditingController _internationalpartyband = TextEditingController();
TextEditingController _personnamecontroller = TextEditingController();
TextEditingController _contactcontroller = TextEditingController();
TextEditingController _eventcontroller = TextEditingController();
TextEditingController _streamingcontroller = TextEditingController();

class _AdvanceBokking2State extends State<AdvanceBokking2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
        body: SingleChildScrollView(
          child: Column(

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
                      title: "International Party Band",
                      editingController: _internationalpartyband,
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
                    SizedBox(
                      height: 2.h,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Per hour Price",style:StyleConst.textStyle18whitesemibold ,),
                          Text("5 KD",style:StyleConst.textStyle18redsemibold ,),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Price",style:StyleConst.textStyle18whitesemibold ,),
                          Text("5 KD * 2 = 10 KD",style:StyleConst.textStyle18redsemibold ,),

                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),

              ReuseableButton2(
                  hint: "Confirm", color: Colors.red, onsumbit: () {})
            ],
          ),
        ),
      ),
    );
  }
}
