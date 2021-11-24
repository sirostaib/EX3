import 'package:flutter/material.dart';

class TaBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  TaBar(this.title);

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("Task List of $title"),
      centerTitle: true,
    );
  }
}
