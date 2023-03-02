import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConst.black,
            body: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Welcome back. you've been missed!",
                          style: TextStyle(
                            color: ColorConst.white,
                          ),
                        ),
                         SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: TextFormField(
                              // controller: _emailController,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),

                                  //labelText: 'Enter Name',
                                  hintText: 'User name or E-Mail',
                                  hintStyle: TextStyle(
                                      fontSize: 16, color: ColorConst.white)),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                       
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      fontSize: 16, color: ColorConst.white)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a valid Pasward!';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 2.8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  FlutterSwitch(
                                    
                                    width: 14.w,
                                    height: 3.h,

                                   // valueFontSize: 23.0,
                                    toggleSize: 30.0,
                                    value: status,
                                    borderRadius: 30.0,
                                   // padding: 8.0,
                                    // showOnOff: true,

                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(
                                        fontSize: 16, color: ColorConst.white),
                                  )
                                ],
                              ),
                              Text(
                                "Forget?",
                                style: TextStyle(
                                    fontSize: 16, color: ColorConst.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Material(
                            elevation: 3,
                            color: ColorConst.red,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              decoration: BoxDecoration(
                                color: ColorConst.red,
                                borderRadius: BorderRadius.circular(30),
                                // border: Border.all(color: ColorConst.white,width: 1)
                              ),
                              child: Center(
                                  child: Text("Sign In",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: ColorConst.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 2.4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Don't have a account?",
                                  style: TextStyle(
                                      fontSize: 20, color: ColorConst.white)),
                              Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 20, color: ColorConst.white))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 1.5.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(color: ColorConst.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConst.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.w, vertical: 2.h),
                                  child: Text(
                                    "OR",
                                    style: TextStyle(
                                        fontSize: 25, color: ColorConst.white),
                                  ),
                                )),
                              ),
                              Expanded(
                                child: Divider(color: ColorConst.white),
                              ),
                            ],
                          ),
                        ),
                     
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 3.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConst.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 1.h),
                                  child: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: ColorConst.red,
                                  ),
                                )),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConst.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 1.h),
                                  child: Icon(
                                    FontAwesomeIcons.google,
                                    color: ColorConst.red,
                                  ),
                                )),
                              ),
                                SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConst.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 1.h),
                                  child: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: ColorConst.red,
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 3.h),
                          child: RichText(
                            // Controls visual overflow
                            overflow: TextOverflow.clip,

                            // Controls how the text should be aligned horizontally
                            textAlign: TextAlign.end,

                            // Control the text direction
                            textDirection: TextDirection.rtl,

                            // Whether the text should break at soft line breaks
                            softWrap: true,

                            // Maximum number of lines for the text to span
                            maxLines: 1,

                            // The number of font pixels for each logical pixel
                            textScaleFactor: 1,
                            text: TextSpan(
                              text: 'Continue as ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'Guest',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: ColorConst.red)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -46.h,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.5,
                      height: MediaQuery.of(context).size.width * 1.3,
                      decoration: BoxDecoration(
                          color: ColorConst.red, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: ColorConst.white, shape: BoxShape.circle),
                      child: Icon(
                        FontAwesomeIcons.user,
                        color: Color(0xff707070),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
