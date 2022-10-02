//@dart=2.9
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fe_latihaku/features/home/home.dart';
import 'package:fe_latihaku/profile/profile.dart';
import 'package:flutter/material.dart';



class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screens = [
    Home(),
    Home(),
    Home(),
    Home(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.article, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screens[_page]
    );
  }
}
