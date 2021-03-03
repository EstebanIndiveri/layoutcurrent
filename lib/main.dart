import 'package:flutter/material.dart';
import 'package:flutter_layout/src/pages/pinterest_page.dart';
import 'package:flutter_layout/src/widget/pinterest_menu.dart';
// import 'package:flutter_layout/src/pages/pinterest_page.dart';
// import 'package:flutter_layout/src/widget/pinterest_menu.dart';
// import 'package:flutter_layout/src/pages/pinterest_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layot',
      home:Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: PinterestMenu(),
      ),
    );
  }
}