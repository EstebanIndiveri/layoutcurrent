import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class Pinterest extends StatelessWidget {
  const Pinterest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinterestGrid(), 
    );
  }
}
class PinterestGrid extends StatelessWidget{

  final List<int> items =List.generate(20, (index) => index); 

  @override
  Widget build(BuildContext context){
    return new StaggeredGridView.countBuilder(
      crossAxisCount:4,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index)=>_PinterestItem(index),
        staggeredTileBuilder: (int index)=>
        new StaggeredTile.count(2, index.isEven?2:3),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
    );
  }
}

class _PinterestItem extends StatelessWidget {
  final int index;
  _PinterestItem(this.index);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin:EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: new Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child:new Text('$index'),
          ),
      ));
  }
}