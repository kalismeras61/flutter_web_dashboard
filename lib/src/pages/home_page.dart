import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/widget/card_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 300),
              CardTile(color: Colors.redAccent),
              SizedBox(width: 30),
              CardTile(color: Colors.amberAccent),
              SizedBox(width: 30),
              CardTile(color: Colors.blueAccent),
              SizedBox(width: 30),
              CardTile(color: Colors.tealAccent),
              SizedBox(width: 30),
            ],
          )
        ],
      ),
    );
  }
}
