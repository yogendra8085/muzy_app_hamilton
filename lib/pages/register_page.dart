import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muzy_app/constant/assetspath/assets_path.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                              decoration: const InputDecoration(
                                
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffDDDDDD)),
                                  ),
                                  hintText: 'Full Name',
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
                         SizedBox(
                          height: 2.h,
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
                                  hintText: 'E-Mail',
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
                       SizedBox(
                          height: 2.h,
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
                                  hintText: 'Mobile',
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
                         SizedBox(
                          height: 2.h,
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
                         SizedBox(
                          height: 2.h,
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
                                  hintText: 'Confirm Password',
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
                         SizedBox(
                          height: 4.h,
                        ),
                        
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
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
                                  child: Text("Register",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: ColorConst.white))),
                            ),
                          ),
                        ),
                      
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 4.w),
                         child: Text("By Registering you  Agree with our Terms & Conditions, and Privacy Policy",style: TextStyle(color: ColorConst.white),),
                       ),
                      
            
                     Padding(
                       padding:EdgeInsets.symmetric(vertical: 2.h),
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
                      text: 'Already have an account?',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    
                      children: const <TextSpan>[
              TextSpan(
                  text: 'Sign in', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: ColorConst.red)),
                      ],
                    ),
                               ),
                     ) ,
            
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
