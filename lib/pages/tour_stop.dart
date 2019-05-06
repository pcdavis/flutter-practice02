import 'package:flutter/material.dart';
import 'tour_stop1.dart';
import 'tour_stop2.dart';
import 'tour_stop3.dart';

class TourStopPage extends StatefulWidget {
  TourStopPage({Key key}) : super(key: key);

  _TourStopPageState createState() => _TourStopPageState();
}

class _TourStopPageState extends State<TourStopPage> {
  List<Widget> tourStopPages = [
    TourStop1(),
    TourStop2(),
    TourStop3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
        colors: [
          const Color.fromARGB(100, 255, 255, 255),
          const Color.fromARGB(100, 1, 28, 5),
        ],
        radius: 0.8,
      )),
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.9,
        ),
        itemBuilder: (context, index) => tourStopPages[index],
        itemCount: tourStopPages.length,
      ),
    );
  }
}
