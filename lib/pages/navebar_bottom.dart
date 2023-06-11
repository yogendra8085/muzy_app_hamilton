
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:muzy_app/pages/profile_page.dart';

import 'advancebookin_page.dart';
import 'live_streaming.dart';
import 'notification_page.dart';


class Navebarpage extends StatefulWidget {
  const Navebarpage({Key? key}) : super(key: key);

  @override
  State<Navebarpage> createState() => _NavebarpageState();
}

class _NavebarpageState extends State<Navebarpage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    LiveStreaming(),
    AdvanceBokking(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),

              ),
              color: Colors.white
            ),
            child: GNav(
              // tabBorderRadius: 50,
              backgroundColor: Colors.transparent,

              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: ColorConst.red,
              color: Colors.black,
              tabs: [

                GButton(
                  icon: Icons.explore,
                  text: 'Explore',
                ),
                GButton(
                  icon: Icons.date_range,
                  text: 'Booking',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Notification',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
