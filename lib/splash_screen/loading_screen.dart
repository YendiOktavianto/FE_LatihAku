//@dart=2.9
import 'package:fe_latihaku/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new Home(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
