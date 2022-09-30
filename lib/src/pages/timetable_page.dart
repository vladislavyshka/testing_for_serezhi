import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';

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
      ),
    );
  }
}
