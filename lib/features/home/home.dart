//@dart=2.9
import 'package:fe_latihaku/constants/constant_header.dart';
import 'package:fe_latihaku/features/booking/booking.dart';
import 'package:fe_latihaku/features/find_coach/coach.dart';
import 'package:fe_latihaku/features/home/home_card.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        appHeader(),
        appHeaderText("Good Morning, \nShikhar", true, GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .85,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            CategoryCard(
              title: "Find Coach",
              svgSrc: "assets/Hamburger.svg",
              press: () {
                changeScreen(context, const Coach());
              },
            ),
            CategoryCard(
              title: "My Coach",
              svgSrc: "assets/Excrecises.svg",
              press: () {},
            ),
            CategoryCard(
              title: "Booking Sport Place",
              svgSrc: "assets/Meditation.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Booking();
                    // return DetailsScreen();
                  }),
                );
              },
            ),
            CategoryCard(
              title: "Status Booking Place",
              svgSrc: "assets/yoga.svg",
              press: () {},
            ),
          ],
        )) ,
      ],
    );
    //);
  }
}
