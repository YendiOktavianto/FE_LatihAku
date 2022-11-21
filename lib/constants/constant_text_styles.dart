//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:flutter/material.dart';

final arvoOrangeBold = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: originalOrangeColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final arvoOrangeRegular = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.normal,
  color: originalOrangeColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final arvoBlueBold = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: originalBlueColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final arvoBlueRegular = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.normal,
  color: originalBlueColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final arvoBrownBold = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: orginalBrownColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final arvoBrownRegular = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.normal,
  color: orginalBrownColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final robotoCondensedBlackBold = TextStyle(
  fontFamily: 'RobotoCondensed',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: blackColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

const robotoCondensedBrownForm = TextStyle(
  fontFamily: 'RobotoCondensed',
  color: orginalBrownColor,
);

final ubuntuBlackBold = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: dotColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final ubuntuDarkOrangeBold = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: darkOrangeAccentColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final ubuntuDarkBlueBold = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: darkBlueAccentColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

final ubuntuDarkBrownBold = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: darkBrownColor,
  height: getProportionateScreenHeight(1.5),
  letterSpacing: getProportionateScreenWidth(2),
);

// "Login"
final arvoDarkOrangeAccent = TextStyle(
  fontFamily: 'Arvo',
  fontSize: getProportionateScreenWidth(40),
  fontWeight: FontWeight.bold,
  color: darkOrangeAccentColor,
  height: getProportionateScreenHeight(1),
  letterSpacing: getProportionateScreenWidth(2),
);

// Text Button for Login
final robotoCondensedDarkOrangeButton = TextStyle(
  fontFamily: 'RobotoCondensed',
  fontSize: getProportionateScreenWidth(25),
  fontWeight: FontWeight.bold,
  color: darkOrangeColor,
);

final robotoCondensedDarkOrange = TextStyle(
  fontFamily: 'Roboto Condensed',
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.normal,
  color: darkOrangeColor,
);

// Text Color for Input Form
const robotoCondensedDarkOrangeForm = TextStyle(
  fontFamily: 'Roboto Condensed',
  color: darkOrangeColor,
);

final robotoCondensedDarkOrangeBold = TextStyle(
  fontFamily: 'Roboto Condensed',
  fontSize: getProportionateScreenWidth(11),
  fontWeight: FontWeight.bold,
  color: darkOrangeColor,
  height: getProportionateScreenHeight(1),
  letterSpacing: getProportionateScreenWidth(1),
);

// Text Color on Onboarding Content
final robotoCondensedDarkAccentOrangeRegular = TextStyle(
    fontFamily: 'Roboto Condensed',
    fontSize: getProportionateScreenWidth(18),
    color: darkOrangeAccentColor,
    height: getProportionateScreenHeight(1.5),
    letterSpacing: getProportionateScreenWidth(2.0),
    wordSpacing: getProportionateScreenWidth(2.0));

// "Skip" Onboarding
final robotoCondensedDarkOrangeOnboarding = TextStyle(
  fontFamily: 'Roboto Condensed',
  color: darkOrangeColor,
  fontSize: getProportionateScreenWidth(16),
);

// Button "Get Started" Onboarding
final ubuntudarkOrangeOnboarding = TextStyle(
  fontFamily: 'Ubuntu',
  color: darkOrangeColor,
  fontSize: getProportionateScreenWidth(20),
);

// Text "Good Morning"
final arvoDarkBrownBoldHome = TextStyle(
    fontFamily: 'Arvo',
    fontWeight: FontWeight.w900,
    fontSize: getProportionateScreenWidth(40));

// Text Nama Tempat pada Booking Detail
const arvoDarkOrangeBookingDetail = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    fontFamily: 'Arvo',
    color: darkOrangeColor);

// Text "Product Name"
const arvoOrangeBookingDetail = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    fontFamily: 'Arvo',
    color: originalOrangeColor);

// Text "Enter the email.... and We will email you..."
final ubuntuOrangeOriginalForgotPassword = TextStyle(
    fontSize: getProportionateScreenWidth(16),
    fontWeight: FontWeight.bold,
    color: originalOrangeColor,
    fontFamily: 'ubuntu');

// Booking Detail Description
final ubuntuOrangeOriginalBookingDetail = TextStyle(
    fontSize: getProportionateScreenWidth(15),
    color: originalOrangeColor,
    fontFamily: 'ubuntu');
