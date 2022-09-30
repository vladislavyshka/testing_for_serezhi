import 'dart:ui';
import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({
    super.key,
  });

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(color: Colors.transparent),
          ),
        ),
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromARGB(200, 255, 255, 255), width: 1),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: const Color(0xffF4F4F4),
        centerTitle: false,
        title: Text(
          'Расписание',
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
    );
  }
}
