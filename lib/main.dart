import 'package:flutter/material.dart';
import 'package:profile_pic_widget/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
