//@dart=2.9
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_header.dart';
import 'package:fe_latihaku/features/find_coach/coach_card.dart';
import 'package:fe_latihaku/models/coach_modeltesting.dart';
import 'package:flutter/material.dart';

class Coach extends StatefulWidget {
  const Coach({Key key}) : super(key: key);

  @override
  _CoachState createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          appHeader("assets/undraw_pilates_gpdb.png",orginalBrownColor),
          appHeaderText("Good Mornign \nShishir", false, CoachCard(
            images: myList,
            rating: rating,
            title: names,
          ), 30)
        ],
      ),
    );
  }
}
