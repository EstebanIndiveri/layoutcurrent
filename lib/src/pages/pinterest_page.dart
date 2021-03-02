import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pinterest extends StatelessWidget {
  const Pinterest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:PinterestGrid(), 
      ),
    );
  }
}
class PinterestGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new StaggeredGridView.countBuilder(
      crossAxisCount:4,
    )
  }
}