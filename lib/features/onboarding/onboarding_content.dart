//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:flutter/material.dart';



class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key key,
    this.head,
    this.text,
    this.image,
  }) : super(key: key);
  final String head ,text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          height: getProportionateScreenHeight(350),
          width: getProportionateScreenWidth(400),
        ),
        Spacer(flex: 2),
        Text(
          head,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: headColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              wordSpacing: 2.0,
              letterSpacing: 2.0),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: bodyColor,
              fontSize: 18,
              wordSpacing: 2.0,
              letterSpacing: 2.0,
              height: 1.5),
        ),
      ],
    );
  }
}
