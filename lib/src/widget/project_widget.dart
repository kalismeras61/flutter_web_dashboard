import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/model/project_model.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
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
      child: Container(
        height: _media.height / 1.9,
        width: _media.width / 3 + 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                    'Projects of the Month',
                    style: cardTitleTextStyle,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 2),
                          Text(
                            'Assigned',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Priority',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Budget',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: projectItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      child: Text(projectItems[index]
                                          .assigned
                                          .substring(0, 2)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(projectItems[index].assigned),
                                  ],
                                ),
                                Text(
                                  projectItems[index].name,
                                  textAlign: TextAlign.justify,
                                ),
                                Container(
                                  child: Text(
                                    projectItems[index].priority.index == 0
                                        ? 'Low'
                                        : projectItems[index].priority.index ==
                                                1
                                            ? 'Medium'
                                            : 'High',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 30,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: projectItems[index].color,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Text(
                                    '${projectItems[index].budget.toString()} K'),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
