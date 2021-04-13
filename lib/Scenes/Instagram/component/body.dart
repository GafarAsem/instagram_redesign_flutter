import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/Constant.dart';
import 'package:instagram_redesign/my_flutter_app_icons.dart';

class BodyComponent extends StatefulWidget {
  @override
  _BodyComponentState createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    print('hhe');
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          //app bar
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset('images/icon_bar.svg'),
                SvgPicture.asset('images/Instagram_bar.svg'),
                SvgPicture.asset('images/message_bar.svg'),
              ],
            ),
          ),
          //story bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                if (index != 0)
                  return story('images/story${rng.nextInt(6)}.png');
                else
                  return Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: kWhiteColor),
                            child: Center(
                              child: Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/story5.png')),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: CupertinoColors.white),
                            child: Center(
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: kGradiantStory,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
              },
            ),
          ),
          //search bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explorer',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kGreyDarkColor),
                    child: Expanded(
                      child: TextField(
                        cursorColor: kWhiteColor,
                        style: TextStyle(color: kWhiteColor),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              MyFlutterApp.noun_search_2475045,
                              color: kWhiteColor,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //list post
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: kGreyDarkColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('images/story5.png'))),
                            ),
                            Column(
                              children: [
                                Text('1j.ft',style: TextStyle(fontWeight: FontWeight.bold,color: kWhiteColor),),
                                Text('has 20 min',style: TextStyle(color:kWhiteColor.withOpacity(0.5)),)
                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget story(imagePath) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: kGradiantStory),
          child: Center(
            child: Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagePath)),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
