import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';
import 'package:flutter_application_2/src/widgets/timetable_widgets.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarDegree(
        'Рабочая область',
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
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Расписание',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Сегодня, 1 сен.',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    const TimeTable(
                      subj:
                          'МДК 03.02 Безопасность функционирования информационных систем',
                      teach: 'Коломис Ю.В',
                    ),
                    const TimeTable(
                      subj:
                          'МДК 04.01 Выполнение работ по профессии наладчик технологичсекого оборудования',
                      teach: 'Бирюков А.С.',
                    ),
                    const TimeTable(
                      subj:
                          'МДК 02.02 Организация администрирования компьютерных систем',
                      teach: 'Сагалаев А.В.',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Завтра, 2 сен.',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Завтра, 2 сен.',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                    const TimeTable(
                      subj: 'Метрология',
                      teach: 'Шишулина И.В.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
