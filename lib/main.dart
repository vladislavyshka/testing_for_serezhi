import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/add_task_page.dart';
import 'package:flutter_application_2/src/pages/notification_page.dart';
import 'package:flutter_application_2/src/theme/themeligth.dart';
import 'package:flutter_application_2/src/pages/auth_page.dart';
import 'package:flutter_application_2/src/pages/login_page.dart';
import 'package:flutter_application_2/src/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Degree',
      theme: lightTheme,
      routes: {
        '/': ((context) => const AuthPage()),
        '/login_page': (context) => const LoginPage(),
        '/main_page': (context) => const MainPage(),
        '/notification_page': (context) => const NotificationPage(),
        '/add_task_page': (context) => const AddTaskPage(),
      },
      initialRoute: '/',
    );
  }
}
