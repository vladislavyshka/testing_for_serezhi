import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/loga_widget.dart';
import 'package:flutter_application_2/src/widgets/buttons.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
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
                  Logo(
                    type: TypeLogo.vertical,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(37),
              child: Column(
                children: [
                  OutlinedButtonDegree(
                    buttonText: 'Войти',
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/login_page'),
                  ),
                  ElevatedButtonDegree(
                    buttonText: 'Зарегистрироваться',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
