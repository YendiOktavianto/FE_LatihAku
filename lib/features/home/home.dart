//@dart=2.9
import 'package:fe_latihaku/coach/coach.dart';
import 'package:fe_latihaku/features/booking/booking.dart';
import 'package:fe_latihaku/features/home/home_card.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Stack(
      children: <Widget>[
        Container(
          // Here the height of the container is 45% of our total height
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    // child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),
                Text(
                  "Good Mornign \nShishir",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                // SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: "Diet Recommendation",
                        svgSrc: "assets/Hamburger.svg",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Kegel Exercises",
                        svgSrc: "assets/Excrecises.svg",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Meditation",
                        svgSrc: "assets/Meditation.svg",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              // return DetailsScreen();
                            }),
                          );
                        },
                      ),
                      CategoryCard(
                        title: "Yoga",
                        svgSrc: "assets/yoga.svg",
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
    //);
  }
}
