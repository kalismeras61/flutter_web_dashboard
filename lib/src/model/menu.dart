import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;

  Menu({this.title, this.icon});
}

List<Menu> menuItems = [
  Menu(title: 'Dashboard', icon: Icons.dashboard),
  Menu(title: 'Notifications', icon: Icons.notification_important),
  Menu(title: 'Web UI', icon: Icons.web),
  Menu(title: 'Charts', icon: Icons.insert_chart),
];
