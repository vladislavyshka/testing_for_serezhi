import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/dashboard_page.dart';
import 'package:flutter_application_2/src/pages/tasks_page.dart';
import 'package:flutter_application_2/src/pages/profile_page.dart';
import 'package:flutter_application_2/src/pages/timetable_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  void onSelectedPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoardPage(),
    TimeTablePage(),
    TaskPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: const Color(0xCCFAFAFA),
      body: _widgetOptions[_selectedPage],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 57,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedPage,
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(0.8),
              selectedItemColor: Colors.black,
              showUnselectedLabels: true,
              selectedLabelStyle: const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0XFFD9D9D9),
              ),
              unselectedItemColor: const Color(0XFFD9D9D9),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.space_dashboard_outlined),
                    label: 'Рабочая область'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.table_rows_outlined), label: 'Расписание'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.work_outline), label: 'Задание'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined),
                    label: 'Профиль'),
              ],
              onTap: onSelectedPage,
            ),
          ],
        ),
      ),
    );
  }
}
