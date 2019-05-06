import 'package:flutter/material.dart';

class TourStop1 extends StatelessWidget {
  const TourStop1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFECEFF1)),
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Text(
            'Tour stop 1',
            textAlign: TextAlign.start,
          ),
        ],
      ),
      alignment: Alignment(-1.0, 0.0),
    );
  }
}
