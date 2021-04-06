import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/Constant.dart';
import 'package:instagram_redesign/Scenes/Instagram/component/bottom_navigation.dart';
import 'package:instagram_redesign/my_flutter_app_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      backgroundColor: kGreyDarkColor,
      onTap: (index) {
        setState(() {
          _bottomNavIndex = index;
        });
      },
      iconSize: 30,
      activeColor: kPinkLightColor,
      inactiveColor: kWhiteColor,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      icons: [MyFlutterApp.noun_home_1315561, MyFlutterApp.noun_search_2475045, MyFlutterApp.noun_heart_6151, Icons.person],
    ) ;
  }
}
