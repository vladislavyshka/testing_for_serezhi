import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';

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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarDegree(
        'Задания',
        context: context,
      ),
    );
  }
}
