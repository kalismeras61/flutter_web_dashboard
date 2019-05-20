import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';

class CardTile extends StatelessWidget {
  final String cardTitle;
  final IconData icon;
  final Color iconBgColor;
  final String mainText;
  final String subText;

  const CardTile(
      {Key key,
      this.cardTitle,
      this.icon,
      this.iconBgColor,
      this.mainText,
      this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
      height: _media.height / 6,
      width: _media.width / 7,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Material(
            elevation: 10,
            color: Colors.white,
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(4),
            child: Container(
              height: _media.height / 6.5,
              width: _media.width / 7,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    cardTitle,
                    style: cardTileTitleText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    mainText,
                    style: cardTileMainText,
                  ),
                  Spacer(),
                  Divider(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        subText,
                        style: cardTileSubText,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Material(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(4),
              elevation: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: _media.height / 18,
                width: _media.width / 20,
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
