import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_text_styles.dart';
import 'package:fe_latihaku/utils/search_bar.dart';
import 'package:flutter/material.dart';

Widget appHeader() {
  return Container(
    height: getProportionateScreenHeight(365),
    decoration: const BoxDecoration(
      color: originalOrangeColor,
      image: DecorationImage(
        alignment: Alignment.centerLeft,
        image: AssetImage("assets/undraw_pilates_gpdb.png"),
      ),
    ),
  );
}

Widget appHeaderText(String textHeader, bool search, Widget body) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Text(
              textHeader,
              //"Good Morning, \nShikhar",
              style: arvoDarkBrownBoldHome, //headingStyle
            ),
          ),
          Offstage(offstage: search, child: const SearchBar()),
          Expanded(child: body)
        ],
      ),
    ),
  );
}
