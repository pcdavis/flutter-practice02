import 'package:flutter/material.dart';
import './pages/homepage.dart';
// import './pages/page2.dart';

void main() => runApp(MyApp());

//-------------MyApp----------------
//MyApp returns a MaterialApp - use it for theme info, but the meat of the app comes from the HomePage that is the MaterialApp's home property.

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
