import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/03/21/12/20/view-2162026_1280.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
