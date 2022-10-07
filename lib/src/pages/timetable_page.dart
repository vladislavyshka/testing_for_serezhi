import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';
import 'package:flutter_application_2/src/widgets/timetable_widgets.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({
    super.key,
  });

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarDegree(
        'Расписание',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  'Сегодня, 1 сен.',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: const [
                      TimeTable(
                        subj:
                            'МДК 03.02 Безопасность функционирования информационных систем',
                        teach: 'Коломис Ю.Е.',
                        classRoom: '224 каб.',
                      ),
                      TimeTable(
                        subj:
                            'МДК 03.02 Безопасность функционирования информационных систем',
                        teach: 'Коломис Ю.Е.',
                        classRoom: '224 каб.',
                      ),
                      TimeTable(
                        subj:
                            'МДК 03.02 Безопасность функционирования информационных систем',
                        teach: 'Коломис Ю.Е.',
                        classRoom: '224 каб.',
                        divider: false,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  'Сегодня, 1 сен.',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: const [
                      TimeTable(
                          subj:
                              'МДК 03.02 Безопасность функционирования информационных систем',
                          teach: 'Коломис Ю.Е.',
                          classRoom: '224 каб.'),
                      TimeTable(
                          subj:
                              'МДК 03.02 Безопасность функционирования информационных систем',
                          teach: 'Коломис Ю.Е.',
                          classRoom: '224 каб.'),
                      TimeTable(
                        subj:
                            'МДК 03.02 Безопасность функционирования информационных систем',
                        teach: 'Коломис Ю.Е.',
                        classRoom: '224 каб.',
                        divider: false,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  'Сегодня, 1 сен.',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: const [
                      TimeTable(
                          subj:
                              'МДК 03.02 Безопасность функционирования информационных систем',
                          teach: 'Коломис Ю.Е.',
                          classRoom: '224 каб.'),
                      TimeTable(
                          subj:
                              'МДК 03.02 Безопасность функционирования информационных систем',
                          teach: 'Коломис Ю.Е.',
                          classRoom: '224 каб.'),
                      TimeTable(
                        subj:
                            'МДК 03.02 Безопасность функционирования информационных систем',
                        teach: 'Коломис Ю.Е.',
                        classRoom: '224 каб.',
                        divider: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
