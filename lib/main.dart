import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/themeligth.dart';
import 'package:flutter_application_2/widgets/auth/auth_widgets.dart';
import 'package:flutter_application_2/widgets/main_screen/main_screen.dart';
import 'package:flutter_application_2/widgets/main_screen/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Degree',
      theme: lightTheme,
      routes: {
        '/': ((context) => const Auth()),
        '/main_screen': (context) => const MainScreenWidget(),
        '/dashboard_screen': (context) => const DashBoard(),
      },
      initialRoute: '/',
    );
  }
}
