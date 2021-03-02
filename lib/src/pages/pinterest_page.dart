import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      itemCount: 8,
      itemBuilder: (BuildContext context, int index)=>new Container(
        color: Colors.green,
        child: new Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child:new Text('$index'),
            ),
        )),
        staggeredTileBuilder: (int index)=>
        new StaggeredTile.count(2, index.isEven?2:1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
    );
  }
}