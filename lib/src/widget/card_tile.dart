import 'package:flutter_web/material.dart';

class CardTile extends StatelessWidget {
  final Color color;

  const CardTile({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 70) + _media.padding,
      child: Card(
        elevation: 10,
        color: color,
        child: Container(
          height: 120,
          width: 250,
          child: Column(
            children: <Widget>[
              Text("Demo"),
            ],
          ),
        ),
      ),
    );
  }
}
