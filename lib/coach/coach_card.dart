//@dart=2.9
import 'package:fe_latihaku/coach/coach_detail.dart';
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';

class CoachCard extends StatelessWidget {
  final List<String> images;
  final List<String> title;
  final List<String> phones;

  const CoachCard({Key key, this.images, this.title, this.phones})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
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
                  title: Text(title[index], style: TextStyle(fontSize: getProportionateScreenWidth(14))),
                  subtitle: Text(phones[index], style: TextStyle(fontSize: getProportionateScreenWidth(10))),
                  trailing: Icon(Icons.tag_faces),
                ),
              ),
            );
          },
        ));
  }
}
