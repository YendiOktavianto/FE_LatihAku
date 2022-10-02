//@dart=2.9
import 'package:fe_latihaku/features/booking/booking_card.dart';
import 'package:fe_latihaku/utils/search_bar.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({Key key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 52,
                  //     width: 52,
                  //     decoration: BoxDecoration(
                  //       color: Color(0xFFF2BEA1),
                  //       shape: BoxShape.circle,
                  //     ),
                  //     child: SvgPicture.asset("assets/icons/menu.svg"),
                  //   ),
                  // ),
                  Text(
                    "Good Mornign \nShishir",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: BookingCard()
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
