import 'dart:ui';

import 'package:flutter/material.dart';

class DashBoard1 extends StatefulWidget {
  const DashBoard1({
    Key? key,
  }) : super(key: key);

  @override
  State<DashBoard1> createState() => _DashBoard1State();
}

class _DashBoard1State extends State<DashBoard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.transparent),
          ),
        ),
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromARGB(200, 255, 255, 255), width: 1),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xCCFFFFFF),
        shadowColor: const Color(0xffF4F4F4),
        centerTitle: false,
        title: Text(
          'Рабочая область',
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

class TimeTable extends StatelessWidget {
  final String subj;
  final String teach;

  const TimeTable({
    Key? key,
    required this.subj,
    required this.teach,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1' '\n' '-' '\n' '2',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        subj,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          teach,
                          style: const TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF808080),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('224 каб.', style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
        const Divider(
          height: 0,
          thickness: 1,
          color: Color(0xFFF6F6F6),
        ),
      ],
    );
  }
}
