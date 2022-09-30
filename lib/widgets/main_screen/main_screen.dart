import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
              child: LogoMainScreen(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 39),
              child: Input(),
            ),
            ExBut(),
          ],
        ),
      ),
    );
  }
}

class LogoMainScreen extends StatelessWidget {
  const LogoMainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/image/degree.svg',
              semanticsLabel: 'SVG from asset folder',
              width: 63,
              height: 63,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              'Студент',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ],
    );
  }
}

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Логин',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: TextField(
            cursorColor: Colors.black,
            cursorWidth: 2,
            style: Theme.of(context).textTheme.bodyText1,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              filled: true,
              fillColor: const Color(0xFFFAFAFA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF4F4F4),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF4F4F4),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            enabled: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Пароль',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        TextField(
          cursorColor: Colors.black,
          cursorWidth: 2,
          obscureText: true,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFF4F4F4),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFF4F4F4),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          enabled: true,
        ),
      ],
    );
  }
}

class ExBut extends StatelessWidget {
  const ExBut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () => Navigator.of(context).pushNamed('/dashboard_screen'),
          child: const Center(
            child: Text(
              'Войти',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
