import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';
import 'package:flutter_application_2/src/widgets/buttons.dart';
import 'package:flutter_application_2/src/widgets/tabbar_widget.dart';
import 'package:flutter_application_2/src/widgets/task_widget.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({
    super.key,
  });

  @override
  State<TaskPage> createState() => _TaskPage();
}

class _TaskPage extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 2,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBarDegree(
              'Задание',
              height: 102,
              context: context,
              bottom: const PreferredSize(
                preferredSize: Size(100, 100),
                child: TabBarDegree(),
              ),
              blur: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    const TaskWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    const TaskWidget(),
                  ],
                ),
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    const TaskWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        'Сегодня, 1 сен.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    const TaskWidget(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    const TaskWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
        AddButton(
          onPressed: (() => Navigator.of(context).pushNamed('/add_task_page')),
        ),
      ],
    );
  }
}
