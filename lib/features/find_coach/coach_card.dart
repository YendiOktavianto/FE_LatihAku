//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/features/find_coach/coach_detail.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CoachCard extends StatelessWidget {
  final List<String> images;
  final List<String> title;
  final List<double> rating;

  const CoachCard({Key key, this.images, this.title, this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                changeScreen(
                    context,
                    CoachDetail(
                      index: index,
                    ));
              },
              child: Card(
                elevation: 10.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: ExactAssetImage(images[index]),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(title[index],
                        style:
                            TextStyle(fontSize: getProportionateScreenWidth(14))),
                  ),
                  subtitle: RatingBarIndicator(
                    rating: rating[index],
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 15,
                    //direction: Axis.vertical,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
