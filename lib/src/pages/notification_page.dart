import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';
import 'package:flutter_application_2/src/widgets/notification_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarDegree(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          splashRadius: 0.1,
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
        'Уведомление',
        context: context,
        blur: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'Сегодня, 1 сен.',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const NotificationWidget(),
          const NotificationWidget(),
          const NotificationWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'Сегодня, 1 сен.',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const NotificationWidget(),
          const NotificationWidget(),
          const NotificationWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'Сегодня, 1 сен.',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const NotificationWidget(),
          const NotificationWidget(),
          const NotificationWidget()
        ],
      ),
    );
  }
}
