
import 'package:fe_latihaku/features/booking/booking_card.dart';
import 'package:fe_latihaku/features/find_coach/coach_card.dart';
import 'package:fe_latihaku/models/coach_modeltesting.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    //_tabController.animateTo(1);
  }

  static const List<Tab> _tabs = [
    const Tab(icon: Icon(Icons.looks_one), child: const Text('Tab One')),
    const Tab(icon: Icon(Icons.looks_two), text: 'Tab Two'),

  ];

  final List<Widget> _views = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: CoachCard(
          images: myList,
          rating: rating,
          title: names,
        ),
    ),

    const Padding(
      padding: EdgeInsets.all(10.0),
      child: BookingCard(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.italic),
              overlayColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue;
                }
                if (states.contains(MaterialState.focused)) {
                  return Colors.orange;
                } else if (states.contains(MaterialState.hovered)) {
                  return Colors.pinkAccent;
                }

                return Colors.transparent;
              }),
              indicatorWeight: 10,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(8),
              //indicatorPadding: EdgeInsets.only(left: 30, right: 30),
              labelPadding: const EdgeInsets.only(left: 30, right: 30),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent,
              ),
              isScrollable: true,
              physics: const BouncingScrollPhysics(),
              // onTap: (int index) {
              //   print('Tab $index is tapped');
              // },
              enableFeedback: true,
              // Uncomment the line below and remove DefaultTabController if you want to use a custom TabController
               controller: _tabController,
              tabs: _tabs,
            ),
            title: const Text('Favourite'),
            backgroundColor: Colors.teal,
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            // Uncomment the line below and remove DefaultTabController if you want to use a custom TabController
            controller: _tabController,
            children: _views,
          ),
        ),
      ),
    );
  }
}
