import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';
import 'land.dart';
import 'tabs.dart';
import 'rounded_text_field.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = const [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
    ];

    return Container(
      width: double.infinity,
      height:SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: lightBgColors,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: getProportionateScreenWidth(30),
            bottom: getProportionateScreenWidth(-45),
            child: SvgPicture.asset("assets/icons/Sun.svg"),
          ),
          Land(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(of: 50,),

                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}