import 'package:flutter/material.dart';
import 'package:flutter_layout/src/widget/pinterest_menu.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class Pinterest extends StatelessWidget {
  const Pinterest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PinterestGrid(),
      // body: PinterestGrid(),
      body: Stack(
        children: <Widget>[
          PinterestGrid(),
          _PinterestMenuLocation(),
        ],
      ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Positioned(
        bottom: 30,
        child: Container(
          width: widthScreen,
          child: Align(
            child: PinterestMenu(),
          ),
        ));
  }
}

class PinterestGrid extends StatefulWidget {
  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  final List<int> items = List.generate(20, (index) => index);

  ScrollController controller = new ScrollController();
  double scrollBehind = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      // print('Screoll ${controller.offset}');
      if (controller.offset > scrollBehind) {
        print('occultar');
      } else {
        print('mostrar menu');
      }
      scrollBehind = controller.offset;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
    // Limpia el controller
  }

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: 4,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => _PinterestItem(index),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 3),
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
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: new Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: new Text('$index'),
          ),
        ));
  }
}

class _Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Text('Hola',
          style:
              TextStyle(color: Colors.cyanAccent, fontStyle: FontStyle.italic)),
    );
  }
}
