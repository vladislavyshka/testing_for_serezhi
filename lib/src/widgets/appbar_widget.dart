import 'package:flutter/material.dart';

class AppBarDegree extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;
  final BuildContext context;
  final Widget? blur;
  final bool? automaticallyImplyLeading;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final double? height;
  const AppBarDegree(this.appBarText,
      {super.key,
      required this.context,
      this.blur,
      this.automaticallyImplyLeading,
      this.leading,
      this.bottom,
      this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: blur,
      shape: const Border(
        bottom: BorderSide(color: Color(0xFFF4F4F4), width: 1),
      ),
      elevation: 0,
      automaticallyImplyLeading:
          automaticallyImplyLeading == null ? false : true,
      backgroundColor: const Color(0xCCFFFFFF),
      leading: leading,
      shadowColor: const Color(0xffF4F4F4),
      centerTitle: false,
      title: Text(
        appBarText,
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(
          splashRadius: 0.1,
          onPressed: () =>
              Navigator.of(context).pushNamed('/notification_page'),
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, height == null ? 54 : height!);
}
