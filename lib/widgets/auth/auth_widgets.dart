import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/buttons/buttons.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Logo(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(37),
              child: Column(
                children: const [
                  ExitBut(),
                  RegBut(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 27),
          child: SvgPicture.asset(
            'assets/image/degree.svg',
            semanticsLabel: 'SVG from asset folder',
          ),
        ),
        Text(
          'Студент',
          style: Theme.of(context).textTheme.headline4,
        )
      ],
    );
  }
}
