import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarDegree extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;
  final BuildContext context;
  const AppBarDegree(this.appBarText, {super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(color: Colors.transparent),
        ),
      ),
      shape: const Border(
        bottom: BorderSide(color: Color(0xCCFFFFFF), width: 1),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xCCFFFFFF),
      shadowColor: const Color(0xffF4F4F4),
      centerTitle: false,
      title: Text(
        appBarText,
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).padding.top + 7);
}
