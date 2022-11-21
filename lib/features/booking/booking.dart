//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_header.dart';
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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          appHeader("assets/undraw_pilates_gpdb.png",originalBlueColor),
          appHeaderText("Good Morning \nShishir", false, const BookingCard(), 30)

        ],
      ),
    );
  }
}
