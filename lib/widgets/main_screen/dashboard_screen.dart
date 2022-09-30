import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/main_screen/dashBoard1.dart';
import 'package:flutter_application_2/widgets/main_screen/lessboard_screen.dart';
import 'package:flutter_application_2/widgets/main_screen/profile_screen.dart';
import 'package:flutter_application_2/widgets/main_screen/tablescreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedPage = 0;
  void onSelectedPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard1(),
    TableScreen(),
    LesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFFAFAFA),
      body: _widgetOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        elevation: 0,
        backgroundColor: Colors.white,
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
              icon: Icon(Icons.person_outline_outlined), label: 'Профиль'),
        ],
        onTap: onSelectedPage,
      ),
    );
  }
}
