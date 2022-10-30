//@dart=2.9
import 'package:animate_do/animate_do.dart';
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/features/booking/booking_image.dart';
import 'package:fe_latihaku/utils/button.dart';
import 'package:fe_latihaku/utils/title_price_rating.dart';
import 'package:flutter/material.dart';






class ShoopingDetail extends StatefulWidget {
  final List<String> mulImg;
  const ShoopingDetail({Key key, this.mulImg}) : super(key: key);

  @override
  _ShoopingDetailState createState() => _ShoopingDetailState();
}

class _ShoopingDetailState extends State<ShoopingDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FadeInDown(
          child: ProductSlider(
            items: widget.mulImg,
          ),
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}




class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: getProportionateScreenHeight(1.5),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(81.2)),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Text(name),
      ],
    );
  }
}
