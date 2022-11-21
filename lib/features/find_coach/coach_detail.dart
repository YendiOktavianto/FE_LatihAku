//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/models/coach_modeltesting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CoachDetail extends StatefulWidget {
  final int index;

  const CoachDetail({Key key, this.index}) : super(key: key);

  @override
  _CoachDetailState createState() => _CoachDetailState();
}

class _CoachDetailState extends State<CoachDetail> {
  bool _like = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(menu[widget.index].image),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.9),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: getProportionateScreenHeight(406)),
                padding: EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      menu[widget.index].name,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(32),
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(50),
                      width: width,
                      child: RatingBarIndicator(
                        rating: rating[0],
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 25,
                        //direction: Axis.vertical,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Text(
                      menu[widget.index].desc,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              menu[widget.index].price.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(28),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange[800]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  //side: BorderSide(color: Colors.orange[800])
                                ))),
                            child: Text(
                              "Add to cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: getProportionateScreenWidth(18)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: getProportionateScreenHeight(40.6),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_backspace,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: getProportionateScreenHeight(365.4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _like = !_like;
                    });
                  },
                  child: Container(
                    height: getProportionateScreenHeight(70),
                    width: getProportionateScreenWidth(70),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Icon(
                      Icons.favorite,
                      size: 45,
                      color: (_like) ? Colors.red : Colors.grey[600],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
