import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/model/comment_model.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key key,
    @required Size media,
  })  : _media = media,
        super(key: key);

  final Size _media;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        height: _media.height / 1.4,
        width: _media.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recent Comments',
              style: cardTitleTextStyle,
            ),
            SizedBox(height: 10),
            Text(
              'Latest Comments on users from Material',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: commentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      dense: true,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(commentList[index].image),
                        radius: 30,
                      ),
                      title: Text(
                        commentList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${commentList[index].comment}',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Text(
                                  '${commentList[index].date}',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.edit, size: 15, color: Colors.grey),
                                SizedBox(width: 10),
                                Icon(Icons.highlight_off,
                                    size: 15, color: Colors.grey),
                                SizedBox(width: 10),
                                Icon(Icons.favorite_border,
                                    size: 15, color: Colors.pink),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isThreeLine: true,
                      trailing: Material(
                        color: commentList[index].color,
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 20,
                          child: Text(
                            commentList[index].status.index == 0
                                ? 'Pending'
                                : commentList[index].status.index == 1
                                    ? 'Approved'
                                    : 'Rejected',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
