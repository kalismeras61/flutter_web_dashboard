import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/widget/vawe_clipper.dart';

class ChartCardTile extends StatelessWidget {
  final Color cardColor;
  final String cardTitle;
  final String subText;
  final IconData icon;
  final String typeText;

  const ChartCardTile(
      {Key key,
      this.cardColor,
      this.cardTitle,
      this.subText,
      this.icon,
      this.typeText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(4),
      shadowColor: Colors.grey,
      color: cardColor,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: cardColor,
            ),
            height: _media.height / 6,
            width: _media.width / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(icon, size: 30, color: Colors.white),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(cardTitle,
                            style:
                                TextStyle(fontSize: 26, color: Colors.white)),
                        SizedBox(height: 5),
                        Text(subText,
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Text(
                  typeText,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
