import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/Constant.dart';
import 'package:instagram_redesign/Scenes/Instagram/component/body.dart';
import 'package:instagram_redesign/Scenes/Instagram/component/bottom_navigation.dart';
import 'package:instagram_redesign/my_flutter_app_icons.dart';

class PageInstagram extends StatefulWidget {
  @override
  _PageInstagramState createState() => _PageInstagramState();
}

class _PageInstagramState extends State<PageInstagram> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset('images/instagram_logo.svg')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigation(),

      body:BodyComponent(),
    );
  }
}
