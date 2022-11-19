//@dart=2.9
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_sizes.dart';
import 'package:fe_latihaku/features/booking/booking_detail.dart';
import 'package:fe_latihaku/models/booking_modeltesting.dart';
import 'package:fe_latihaku/models/coach_modeltesting.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';



class BookingCard extends StatefulWidget {
  const BookingCard({Key key}) : super(key: key);

  @override
  _BookingCardState createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.75,
        ),

        itemBuilder: (context, index) => GestureDetector(
          onTap: (){ changeScreen(context, ProductDetailsView());},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(kDefaultPaddin),
                  // For  demo we use fixed height  and width
                  // Now we dont need them
                  // height: 180,
                  // width: 160,
                  decoration: BoxDecoration(
                    color: products[index].color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(
                    tag: "${products[index].id}",
                    child: Image.asset(products[index].image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Text(
                  // products is out demo list
                  products[index].title,
                  style: const TextStyle(color: kTextLightColor),
                ),
              ),
              Text(
                "\$${products[index].price}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
