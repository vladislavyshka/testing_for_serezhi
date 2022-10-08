import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/buttons.dart';
import 'package:flutter_application_2/src/widgets/loga_widget.dart';
import 'package:flutter_application_2/src/widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              child: Logo(type: TypeLogo.horizontal),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 39),
              child: Column(
                children: const [
                  TextFieldDegree(
                    textFieldText: 'Логин',
                    obscureText: false,
                    maxlines: 1,
                  ),
                  TextFieldDegree(
                    textFieldText: 'Пароль',
                    obscureText: true,
                    maxlines: 1,
                  ),
                ],
              ),
            ),
            OutlinedButtonDegree(
              buttonText: 'Войти',
              onPressed: () => Navigator.of(context).pushNamed('/main_page'),
            ),
          ],
        ),
      ),
    );
  }
}
