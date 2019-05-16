import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/pages/home_page.dart';
import 'package:flutter_web_dashboard/src/widget/sidebar_menu..dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePage(),
          SizedBox.fromSize(
            size: Size.fromHeight(60),
            child: AppBar(
              elevation: 4,
              centerTitle: true,
              title: Text(
                "Flutter Dashboard Web UI",
              ),
              backgroundColor: drawerBgColor,
            ),
          ),
          SideBarMenu(),
        ],
      ),
    );
  }
}
