import 'package:flutter/material.dart';

class PinterestButton{
  final Function onPressed;
  final IconData icon;

  PinterestButton({
    @required this.onPressed,
    @required this.icon
    });
}

class PinterestMenu extends StatelessWidget {
  final List<PinterestButton> items=[
    PinterestButton(icon: Icons.pie_chart,onPressed: () {
      print('icon pie_chart');
      }),
      PinterestButton(icon: Icons.search,onPressed: () {
      print('icon search');
      }),
      PinterestButton(icon: Icons.notifications,onPressed: () {
      print('icon notifications');
      }),
      PinterestButton(icon: Icons.supervised_user_circle,onPressed: () {
      print('icon supervised_user_circle');
      })
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child:_MenuItems(items),

          width: 250,
          height: 60,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0,0),
                blurRadius: 10,
                spreadRadius: -5,
              )
            ]
          ),
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  final List<PinterestButton> menuItems;
  _MenuItems(this.menuItems);
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length, (index) => _PinterestMenuButton(index,menuItems[index])),
    );
  }
}

class _PinterestMenuButton extends StatelessWidget {
  final int index;
  final PinterestButton item;
  _PinterestMenuButton(this.index,this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Icon(item.icon),
    );
  }
}